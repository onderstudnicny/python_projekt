import mysql.connector

db = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    passwd='',
    database='pythonproject_db'
)

mycursor = db.cursor()

mycursor.execute('DELETE FROM graphicscards')

db.commit()