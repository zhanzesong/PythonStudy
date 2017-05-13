#encoding:utf-8
import MySQLdb

conn = MySQLdb.connect(
        host='localhost',
        port=3306,
        user='root',
        passwd='zzs123',
        charset = "utf8",
        db='university',
    )

cur = conn.cursor()
# with open('/home/zhan/shuwa/week4/MySQL上课文件/作业/university/department.txt','r')as a:
#     txt1 = a.readlines()
#     cur.execute("insert into department values (%s %s %d)")


def prc_line1(line):
    _result = line.decode("utf-8").strip().split(" ")
    _result[2] = int(_result[2])
    return _result


with open("/home/zhan/shuwa/week4/MySQL上课文件/作业/university/department.txt","r") as f:
    datas = [prc_line1(line) for line in f.readlines()]

for d in datas:
    cur.execute("insert into department values('%s','%s',%d)"%(d[0],d[1],d[2]))








def prc_line2(line):
    _result = line.decode("utf-8").strip().split(" ")
    _result[0] = int(_result[0])
    _result[2] = int(_result[2])
    return _result


with open("/home/zhan/shuwa/week4/MySQL上课文件/作业/university/exam.txt","r") as f:
    datas = [prc_line2(line) for line in f.readlines()]

for d in datas:
    cur.execute("insert into exam values('%d','%s',%d)"%(d[0],d[1],d[2]))






def prc_line3(line):
    _result = line.decode("utf-8").strip().split(" ")
    _result[0] = int(_result[0])
    _result[3] = int(_result[3])
    return _result


with open("/home/zhan/shuwa/week4/MySQL上课文件/作业/university/student.txt","r") as f:
    datas = [prc_line3(line) for line in f.readlines()]

for d in datas:
    cur.execute("insert into student values(%d,'%s','%s',%d,'%s','%s')"%(d[0],d[1],d[2],d[3],d[4],d[5]))





conn.commit()