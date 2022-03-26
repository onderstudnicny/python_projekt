import mysql.connector

db = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    passwd='',
    database='mydatabase'
)

mycursor = db.cursor()

mycursor.execute('DELETE FROM graphicscards WHERE id_GraphicsCards>0')

db.commit()