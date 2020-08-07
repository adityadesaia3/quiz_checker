from flask import Flask, render_template, request, flash, redirect, url_for
import os
from werkzeug.utils import secure_filename
from quiz_checker_databases import get_names_of_question_papers, fetch_answer_to_the_question

app = Flask(__name__)

# https://docs.python.org/3/reference/lexical_analysis.html#string-and-bytes-literals
app.secret_key = b"K5VN^;WLzmtxj[P7"

# Path of current directory
current_directory_path = os.path.dirname(os.path.realpath(__file__))


@app.route("/")
def index():
    return render_template("index.html")

@app.route("/quiz", methods=["GET", "POST"])
def quiz():
    no_of_questions = request.form["no_of_questions"]
    question_papers = get_names_of_question_papers()
    return render_template("quiz.html", no_of_questions = no_of_questions, question_papers = question_papers)

@app.route("/quiz_result", methods=["GET", "POST"])
def quiz_result():
    question_paper_name = request.form["question_paper_name"]
    correct_marks = float(request.form["correct_marks"])
    wrong_marks = float(request.form["wrong_marks"])
    no_of_questions = int(request.form["no_of_questions"])
    

    total_marks = correct_marks * no_of_questions
    scored_marks = 0
    scored_correct_marks = 0
    scored_negative_marks = 0

    total_result = []

    for question_number in range(1, no_of_questions + 1):
        correct_answer = str(fetch_answer_to_the_question(question_paper_name, question_number))
        given_answer = request.form[str(question_number)]
        marks_of_question = 0

        if correct_answer == given_answer:
            marks_of_question = correct_marks
            scored_correct_marks += correct_marks
        else:
            marks_of_question -= wrong_marks
            scored_negative_marks -= wrong_marks

        scored_marks += marks_of_question
        total_result.append((question_number, given_answer, correct_answer, marks_of_question))


    return render_template("quiz_result.html", question_paper_name = question_paper_name, total_marks = total_marks, scored_marks = scored_marks, scored_correct_marks = scored_correct_marks, scored_negative_marks = scored_negative_marks, no_of_questions = no_of_questions, total_result = total_result)


if __name__ == "__main__":
    app.run(debug=True)