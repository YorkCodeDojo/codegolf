import re
w="Head, |shoulders, |knees and |toes\n|and eyes |and ears |and mouth and |nose\n|".split("|")
p=[0,1,2,3,2,3]
for s in range(9):print(''.join([w[m]for m in p+p+[4,5,6,7]+p]));w[s]=re.sub(r'(\w)+','...',w[s])
