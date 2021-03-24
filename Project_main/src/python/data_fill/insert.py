
import pyodbc

server = 'localhost'
database = 'social_network'
username = 'sa'#'DESKTOP-6NPHA10\WhysoseriousONI'
password = 'acies123'
cnxn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=' +
                      server+';DATABASE='+database+';UID='+username+';PWD=' + password)
cursor = cnxn.cursor()

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
print(dd)
for ddd in dd:
    try:
        sql = 'insert into [dbo].[interest_name_table](interest_name) OUTPUT INSERTED.* values (?);'
        values = (ddd)
        # print(interest.readlines())
        print(ddd)
        cursor.execute(sql,values)
        cursor.commit()
    except:
        pass