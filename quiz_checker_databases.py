import mysql.connector

def get_names_of_question_papers():
    connection = None
    question_papers = None
    try:
        connection = mysql.connector.connect(host="localhost", user="root", password="", database="quiz_checker_db")
        if connection.is_connected():
            cursor = connection.cursor()

            try:
                query = f"show tables"
                cursor.execute(query)
                question_papers = cursor.fetchall()
                
            except mysql.connector.Error as error:
                print(error)
            finally:
                cursor.close()
    except mysql.connector.Error as error:
        print(error)
    finally:
        if connection:
            connection.close()

    return question_papers


def fetch_answer_to_the_question(question_paper_name, question_number):
    answer = None
    connection = None
    try:
        connection = mysql.connector.connect(host="localhost", user="root", password="", database="quiz_checker_db")
        if connection.is_connected():
            cursor = connection.cursor()

            try:
                # select data
                select_query = f"SELECT answer FROM `{question_paper_name}` where question_number = {question_number}"
                cursor.execute(select_query)
                answer = cursor.fetchone()[0]
            except mysql.connector.Error as error:
                print(error)
            finally:
                cursor.close()
    except mysql.connector.Error as error:
        print(error)
    finally:
        if connection:
            connection.close()

    return answer