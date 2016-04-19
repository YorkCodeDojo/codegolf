import re
w="Head, |shoulders, |knees and |toes\n|and eyes |and ears |and mouth and |nose\n|".split("|")
p=[0,1,2,3,2,3]
print('\n'.join(''.join(w[m]if m>=s else re.sub(r'\w+','...',w[m])for m in p+p+[4,5,6,7]+p)for s in range(9))[:-1])
