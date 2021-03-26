
import mysql.connector
import random as rand
# server = 'localhost'
# database = 'social_network'
# username = 'sa'#'DESKTOP-6NPHA10\WhysoseriousONI'
# password = 'acies123'
# cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
#                       server+';DATABASE='+database+';UID='+username+';PWD=' + password)

mydb = mysql.connector.connect(host="localhost",
  user="root",
  password="",
  database="social_network")

cursor = mydb.cursor()

dd=set()
with open('person.txt', 'r+',encoding='utf-8') as person:
    for x in person.readlines():
        dd.add(x.strip('\n'))

for ddd in dd:
    # try:
        sql = "exec usp_createUser ?,?,?,?,?,?,?"
        values = (ddd)
        # print(interest.readlines())
        print(ddd)
        cursor.execute(sql,values)
        mydb.commit()
    # except:
    #     pass



