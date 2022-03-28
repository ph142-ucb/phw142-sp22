#!/usr/bin/env python3
import requests
import getpass
import subprocess
import sys, re
# import extract_pdf
from os import listdir
from os.path import isfile, join

# Change these for each assignment
ASSIGNMENT_RMD_PATH = "lab08.Rmd"
COURSE_ID = 333190
PROGRAMMING_ASSIGNMENT_ID = 1743061

# Don't change these
PDF_PATH = ASSIGNMENT_RMD_PATH.replace('.Rmd', '.pdf')
FRQ_PATH = ASSIGNMENT_RMD_PATH.replace('.Rmd', '_frq.pdf')
BASE_URL = 'https://www.gradescope.com'
IS_QUESTION_START= re.compile(r'(\d+)[\.]? (\*)*\[\d+(\.\d+)? (point|mark)[s]?\](\*)*')


class APIClient:
    def __init__(self):
        self.session = requests.Session()

    def post(self, *args, **kwargs):
        return self.session.post(*args, **kwargs)

    def log_in(self, email, password):
        url = "{base}/api/v1/user_session".format(base=BASE_URL)

        form_data = {
            "email": email,
            "password": password
        }
        r = self.post(url, data=form_data)

        self.token = r.json()['token']

    def upload_pdf_submission(self, course_id, assignment_id, student_email, filename):
        url = "{base}/api/v1/courses/{0}/assignments/{1}/submissions".format(
            course_id, assignment_id, base=BASE_URL
        )

        form_data = {
            "owner_email": student_email
        }
        files = {'pdf_attachment': open(filename, 'rb')}

        request_headers = {'access-token': self.token}

        try:
            r = self.post(url, data=form_data, headers=request_headers, files=files)
            print("Free-response submission successful!")
            return r
        except:
            print("Error occurred while uploading...\nPlease make sure you didn't change the name" + \
            " of your assignment file and that it knits.\n If this issue persists, post on Piazza.")

    def upload_programming_submission(self, course_id, assignment_id, student_email, filenames):
        url = "{base}/api/v1/courses/{0}/assignments/{1}/submissions".format(
            course_id, assignment_id, base=BASE_URL
        )

        form_data = {
            "owner_email": student_email
        }
        files = [('files[]', (filename, open(filename, 'rb'))) for filename in filenames]

        request_headers = {'access-token': self.token}

        try:
            r = self.post(url, data=form_data, headers=request_headers, files=files)
            print("Programming submission successful!")
            return r
        except:
            print("Error occurred while uploading...\nPlease make sure you didn't change the name" + \
            " of your assignment file and that it knits.\n If this issue persists, post on Piazza.")

def generate_frq_rmd(original_rmd_path, frq_list, frq_rmd_path=None):
    """ original_rmd_path: Path to original .Rmd file to submit
        frq_list: list of question numbers to export (FRQ questions)
        frq_rmd_path (optional): path for exported FRW .Rmd file

        returns: path to FRQ .Rmd file (frq_rmd_path) """
    frq_list = set(frq_list + [0]) # include "question 0" to export preamble
    curr_q = 0
    should_collect = True
    if not frq_rmd_path:
        frq_rmd_path = original_rmd_path[:-len(".Rmd")] + "_frq.Rmd"

    with open(original_rmd_path) as rf, open(frq_rmd_path, 'w') as wf:
        curr_lines = []
        for line in rf:
            # check if curr line is the start of a new question
            is_q = IS_QUESTION_START.search(line)
            if is_q is not None:
                q_num = int(is_q.group(1))
                if q_num in frq_list:
                    should_collect = True
                if q_num - 1 in frq_list:
                # curr_lines now contains everything between q_num and q_num+1
                    curr_lines.append("\\newpage\n")
                    wf.write("".join([str(l) for l in curr_lines]))
                curr_lines = []

            if should_collect and "\\newpage" in line and '`' not in line:
                should_collect = False

            # otherwise, if curr question is frq, export the line
            if should_collect and \
                not (line == '\n' and \
                        (not curr_lines or curr_lines[-1] == '\n')):
                curr_lines.append(line)
        # take care of last question to export
        if q_num in frq_list:
            wf.write("".join([str(l) for l in curr_lines]))
    print(f"===> Successfully exported FRQ .Rmd file to {frq_rmd_path}")
    return frq_rmd_path

if __name__ == '__main__':
  
    knit_attempt = input("Have you knitted your file after completing the lab? (Yes/No): ")
    if (knit_attempt == "Yes" or knit_attempt == "yes"):
        if (isfile(PDF_PATH)):
            pass
        else:
            sys.exit("------------------\nNo {0} found; please make sure that you knitted your Rmd!\n------------------".format(PDF_PATH))
    elif (knit_attempt == "No" or knit_attempt == "no"):
        sys.exit("-----\nPlease make sure you knit your Rmd before submitting!!!")
    else:
        sys.exit("Invalid input; please type 'Yes' or 'No'")
        
    try:
        if FRQ_ASSIGNMENT_ID in globals() and FRQ_ASSIGNMENT_ID is not None:
            frq_rmd_path = generate_frq_rmd(ASSIGNMENT_RMD_PATH, FRQ_Q_NUMS)
            cmd = "rmarkdown::render('{}',output_file='{}')".format(frq_rmd_path, FRQ_PATH)
            subprocess.check_output(['R', '-e', cmd], stderr = None)
    except NameError:
        pass
    except Exception as e:
        sys.exit("-----\nError... make sure you haven't changed the file name and make sure the file knits.")
        print(e)

    try:
        if PROGRAMMING_ASSIGNMENT_ID is not None:
            cmd = "rmarkdown::render('{}',output_file='{}')".format(ASSIGNMENT_RMD_PATH, PDF_PATH)
            subprocess.check_output(['R', '-e', cmd], stderr = None)
    except Exception as e:
        sys.exit("-----\nError... make sure you haven't changed the file name and make sure the file knits.")
        print(e)



    client = APIClient()
    email = input("Please provide the email address on your Gradescope account: ")
    password = getpass.getpass('Password: ')
    try:
        client.log_in(email, password)
    except:
        sys.exit("-----\nError... wrong username or password. Please try again.")

    # Use the APIClient to upload submissions after logging in, e.g:
    # client.upload_pdf_submission(1234, 5678, 'student@example.edu', 'submission.pdf')
    # Commented out 10/13/2020 - Not using for Fall 2020

    # try:
    #   if FRQ_ASSIGNMENT_ID in globals() and FRQ_ASSIGNMENT_ID is not None:
    #     client.upload_pdf_submission(COURSE_ID, FRQ_ASSIGNMENT_ID, email, FRQ_PATH)
    # except NameError:
    #     pass

    if PROGRAMMING_ASSIGNMENT_ID is not None:
        #src_files = [join("src", f) for f in listdir("src") if isfile(join("src", f))]
        #files = src_files + [ASSIGNMENT_RMD_PATH, PDF_PATH]
        files = [ASSIGNMENT_RMD_PATH, PDF_PATH]
        client.upload_programming_submission(COURSE_ID, PROGRAMMING_ASSIGNMENT_ID, email, files)
    # You can get course and assignment IDs from the URL, e.g.
    # https://www.gradescope.com/courses/1234/assignments/5678
    # course_id = 1234, assignment_id = 5678

    print("Important: Please log into Gradescope and confirm that the entirety of your completed assignment is there.")
    print("It may take a few minutes for Gradescope to display your submission.")
