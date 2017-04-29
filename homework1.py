#encoding:utf-8

import re




dict = {}
with open('/home/zhan/PythonStudy/太空旅客.txt', 'r') as file:
    a = file.read()

def pipei(lujing):
    with open(lujing) as new:
        for line in new.readlines():
            line = line.strip('\n')
            g = re.findall(line,a)
            num = len(g)
            dict[line] = num


    with open('/home/zhan/PythonStudy/result.txt','w') as result:

        # for key in dict:
        #
        #     key = str(key)+str(dict[key])+'\n'
        #     result.write(key)
        for line in dict:
            result.write(line)

            result.write(' ')

            result.write(str(dict[line]))

            result.write('\n')

pipei('/home/zhan/PythonStudy/词典/角色/反派.txt')
pipei('/home/zhan/PythonStudy/词典/角色/角色.txt')
pipei('/home/zhan/PythonStudy/词典/角色/角色中的其他.txt')
pipei('/home/zhan/PythonStudy/词典/角色/男主角.txt')
pipei('/home/zhan/PythonStudy/词典/角色/女主角.txt')
pipei('/home/zhan/PythonStudy/词典/角色/配角.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/发展.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/结局.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/剧情.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/开头.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/泪点.txt')
pipei('/home/zhan/PythonStudy/词典/剧情/笑点.txt')
pipei('/home/zhan/PythonStudy/词典/视听/动作.txt')
pipei('/home/zhan/PythonStudy/词典/视听/画面.txt')
pipei('/home/zhan/PythonStudy/词典/视听/镜头.txt')
pipei('/home/zhan/PythonStudy/词典/视听/视听.txt')
pipei('/home/zhan/PythonStudy/词典/视听/试听效果中的其他')
pipei('/home/zhan/PythonStudy/词典/视听/音乐.txt')
pipei('/home/zhan/PythonStudy/词典/制作/编剧.txt')
pipei('/home/zhan/PythonStudy/词典/制作/出品公司.txt')
pipei('/home/zhan/PythonStudy/词典/制作/导演.txt')
pipei('/home/zhan/PythonStudy/词典/制作/选景.txt')
pipei('/home/zhan/PythonStudy/词典/主题/风格.txt')
pipei('/home/zhan/PythonStudy/词典/主题/题材内容.txt')
pipei('/home/zhan/PythonStudy/词典/主题/主题.txt')


#
# with open('/home/zhan/zhanzesong/aa2.txt', 'r') as result:
#     old = result.read()
#
# with open('/home/zhan/zhanzesong/aa2.txt', 'w') as result:
#     for line in old:
#         result.write(line)
#
#         result.write(' ')
#
#         result.write(max(str(dict[line])))
#
#         result.write('\n')

# def paixu(d):
#
#     items=d.items()
#
#     backitems=[[v[1],v[0]] for v in items]
#
#     backitems.sort()
#
#     return [ backitems[i][1] for i in range(0,len(backitems))]
#
# paixu(old)





