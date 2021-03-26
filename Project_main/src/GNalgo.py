
import mysql.connector
import networkx as nx
import matplotlib.pyplot as plt

def girvan_newman(graph):
    sg = nx.connected_components(graph)
    sg_count = nx.number_connected_components(graph)
    while(sg_count == 1):
        graph.remove_edge(edge_to_remove(graph)[0], edge_to_remove(graph)[1])
        sg = nx.connected_components(graph)
    sg_count = nx.number_connected_components(graph)
    return sg


def edge_to_remove(graph):
    G_dict = nx.edge_betweenness_centrality(graph)
    edge = ()

  # extract the edge with highest edge betweenness centrality score
    for key, value in sorted(G_dict.items(), key=lambda item: item[1], reverse = True):
        edge = key
        break

    return edge

G=nx.Graph()

edge1=list()
edge2=list()
nodes=list()

# ts=set([238,
# 238,
# 238,
# 238,
# 246,
# 246,
# 246,
# 217,
# 217,
# 217,
# 217,
# 217,
# 217,
# 221,
# 221,
# 221,
# 221,
# 237,
# 237,
# 237,
# 237,
# 237,
# 237,
# 237,
# 206,
# 206,
# 206,
# 206,
# 206,
# 206,
# 206,
# 206,
# 233,
# 233,
# 233,
# 233,
# 233,
# 233,
# 233,
# 233,
# 208,
# 208,
# 208,
# 208,
# 208,
# 208,
# 214,
# 214,
# 214,
# 214,
# 214,
# 214,
# 236,
# 236,
# 236,
# 236,
# 236,
# 236,
# 236,
# 236,
# 231,
# 231,
# 231,
# 218,
# 218,
# 239,
# 239,
# 239,
# 239,
# 239,
# 203,
# 203,
# 203,
# 203,
# 203,
# 203,
# 227,
# 227,
# 227,
# 211,
# 211,
# 211,
# 211,
# 211,
# 211,
# 210,
# 210,
# 210,
# 210,
# 210,
# 210,
# 222,
# 222,
# 207,
# 207,
# 207,
# 207,
# 207,
# 207,
# 213,
# 213,
# 213,
# 213,
# 213,
# 213,
# 213,
# 213,
# 229,
# 229,
# 229,
# 229,
# 229,
# 229,
# 229,
# 229,
# 249,
# 249,
# 249,
# 243,
# 243,
# 243,
# 243,
# 243,
# 243,
# 228,
# 228,
# 228,
# 228,
# 228,
# 223,
# 223,
# 223,
# 223,
# 223,
# 245,
# 245,
# 245,
# 220,
# 220,
# 220,
# 220,
# 220,
# 220,
# 248,
# 248,
# 248,
# 204,
# 204,
# 204,
# 204,
# 204,
# 204,
# 216,
# 216,
# 216,
# 216,
# 216,
# 216,
# 216,
# 216,
# 235,
# 202,
# 241,
# 247,
# 230,
# 232,
# 244,
# 242,
# 240,
# 212,
# 219,
# 224,
# 209,
# 205,
# 250,
# 226,
# 234,
# 225,
# 201,
# 215])
# for t in ts:
#     print(t,end='\n')

with open('C:\\Users\\WhysoseriousONI\\Desktop\\tempnode.txt', 'r+',encoding='utf-8') as node:
    for x in node.readlines():
        nodes.append(x.strip('\n'))
# with open('C:\\Users\\WhysoseriousONI\\Desktop\\4thyearproject\\finalYearproject\\Project_main\\temp.txt',         
with open('C:\\Users\\WhysoseriousONI\\Desktop\\temp.txt', 'r+',encoding='utf-8') as temp:
    for x in temp.readlines():
        ttt=x.strip('\n').split(" ")
        edge1.append(ttt[0])
        edge2.append(ttt[1])

for n in nodes:
    G.add_node(n)
for i in range(0,len(edge1)):
    G.add_edge(edge1[i],edge2[i])

print(nodes)
# print(edge1)
# print(edge2)


###
mydb = mysql.connector.connect(host="localhost",
                               user="root",
                               password="",
                               database="social_network")

cursor = mydb.cursor()
last_id=1
sql='select cid from people_and_community group by cid order by cid desc limit 1'
cursor.execute(sql)
last_id=cursor.fetchone()
if last_id==None:
    last_id=1


### 
c = girvan_newman(G.copy())
node_groups = []

for i in c:
    node_groups.append(list(i))

colors=["blue","green","red","yellow","violet",'grey']
el=[]
print(node_groups)
for nn in nodes:
    for i in range(0,len(node_groups)):
        if nn in node_groups[i]:
            sql ='insert into people_and_community (cid,uid) values("'+str(last_id+i)+'","'+str(nn)+'")'
            print(sql)
            cursor.execute(sql)
        # else:
        #     el.append(nn)
last_id+=len(node_groups)

for e in el:
    sql ='insert into people_and_community (cid,uid) values("'+str(last_id)+'","'+str(e)+'")'
    print(sql)
    cursor.execute(sql)
mydb.commit()