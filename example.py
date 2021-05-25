entry =[
  ("김사랑",70,75),
  ("이하늬",60,65),  
  ("이지은",80,85),
  ("서윤희",90,95),
  ("김은정",85,95)]  
sum = []

def makeSum(entry,
  sum) :
    if not entry:
      print("entry list is empty")
    else:
        for i in range(0,5) :
            sum.append(entry[i][1]+entry[i][2])
        sum.sort(reverse=True)
        print ("진",list(filter(lambda x:x[1]+x[2]==sum[0],entry)))
        print ("선",list(filter(lambda x:x[1]+x[2]==sum[1],entry)))
        print ("미",list(filter(lambda x:x[1]+x[2]==sum[ 2 ],entry)))

makeSum(entry,sum)