b="Head~shoulders~knees~and toes~and eyes~and ears~and mouth~and nose".split("~")
a="""{0}, {1}, {2} {3}
{2} {3}
"""
s=(a+a+"{4}, {5}, {6} {7}\n"+a).format(*b)
for p in b:print s;s=s.replace(p,"... ..."if"and"in p else"...")
