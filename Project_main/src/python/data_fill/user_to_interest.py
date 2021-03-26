
import mysql.connector
import random as rnd
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


inter = set()

with open('interestnum.txt', 'r+', encoding='utf-8') as interest:
    for x in interest.readlines():
        inter.add(x.strip('\n'))
inter = list(inter)

# print(inter[2])
uid = list()

with open('uid.txt', 'r+', encoding='utf-8') as userid:
    for x in userid.readlines():
        uid.append(x.strip('\n'))
# print(uid)
cnt=0

# for i in range(0,4):
#     group=[]
#     for i in range(0,4):
#         group.append(rnd.randint(   rnd.randint(0, 500), rnd.randint(500, 15000)) )
#     print(group)

# cursor.execute("truncate table user_interest_table")
group=[]

for i in range(0,3):
    group.append(rnd.randint(rnd.randint(0, 500), rnd.randint(500, 15000)) )
for u in range(0,100,2):
    user=[]
    
    for l in range(0+u,5+u):
        user.append(uid[l])
    print(user)
    print(group)

    for l in range(0,5):
        if l<3:
            sql ='insert into user_interest_table (interest_name_id,uid) values("'+str(group[l])+'","'+str(user[l])+'")'
        else:
            sql= 'insert into user_interest_table (interest_name_id,uid) values("'+str(rnd.randint(0, 2000))+'","'+str(user[l])+'")'
        print(sql)
        cursor.execute(sql)
    # else:
    #     sql= 'insert into user_interest_table (interest_name_id,uid) values("'+str(rnd.randint(5000, 10000))+'","'+str(uid[u])+'")'
    print(sql)
    cursor.execute(sql)
mydb.commit()

# for j in range(0,50,5):
#     group=[]
#     user=[]
#     for i in range(j,j+5,1):
#         user.append(uid[j])

#     for i in range(0,3):
#         group.append(rnd.randint(   rnd.randint(0, 500), rnd.randint(500, 15000)) )
#     print(group)

#     for i in range(0, 5):
#         # try:
#         for j in range(0,5):
#             if(i<3):
#                 sql = 'insert into user_interest_table (interest_name_id,uid) values("'+str(group[i])+'","'+str(user[j])+'")'
#             else:
#                 sql= 'insert into user_interest_table (interest_name_id,uid) values("'+str(rnd.randint(rnd.randint(0, 500), rnd.randint(500, 15000)))+'","'+str(user[j])+'")'
#             print(sql)
#             cursor.execute(sql)
#             cnt+=1

#         if(cnt==100):
#             break
# mydb.commit()
# except:
    # pass