
import mysql.connector

server = 'localhost'
database = 'social_network'
username = 'sa'#'DESKTOP-6NPHA10\WhysoseriousONI'
password = 'acies123'
mydb = mysql.connector.connect(host="localhost",
  user="root",
  password="",
  database="social_network")

cursor = mydb.cursor()

# Select Query
# print ('Reading data from table')
# tsql = "SELECT uid FROM  [dbo].[user_details_table];"
# row=()
# with cursor.execute(tsql):
#     row = cursor.fetchall()
dd=set()
with open('interest.txt', 'r+',encoding='utf-8') as interest:
    for x in interest.readlines():
        dd.add(x.strip('\n'))
# print(dd)
i=1
for ddd in dd:
    # try:
        sql = 'insert ignore into interest_name_table (interest_name_id ,interest_name ) values ('+str(i)+','+'"'+ddd+'"'+')'
        values = (ddd)
        
        print(sql)
        # print(interest.readlines())
        print(i,ddd)
        cursor.execute(sql)
        mydb.commit()
        i+=1
    # except :
    #     pass

print(cursor.rowcount)