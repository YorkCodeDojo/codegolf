w=["Head","shoulders","knees and","toes","and eyes","and ears","and mouth and","nose"]
r [] _ _=[]
r(s:w)a b=if s==a then b++r w a b else s:r w a b
s x []=x
s w((i,x):l)=r(s w l)i x
d 0 l=l
d i (x:l)=(unwords$take(length$words x)$repeat"..."):d(i-1)l
l="0, 1, 2 3\n2 3\n"
main=putStr$concat$map(s(l++l++"4 5 6 7\n"++l++"\n").zip['0'..])$map(uncurry d)$zip[0..8]$repeat w