l=List.to_tuple(Enum.zip(1..9,["Head, ","shoulders, ","knees and ","toes","and eyes ","and ears ","and mouth and ", "nose","\n"]))
p=fn(_,9,_)->"";(i,m,f)->IO.puts(List.foldr(i,"",fn({n,s},a)->if n<=m do String.replace(s,~r/(\w)+/,"...")else s end<>a end)<>if m<8,do: "\n",else: "");f.(i,m+1,f);end
w=fn(_,[],_)->[];(j,[k|r],y)->[elem(j,k-1)|y.(j,r,y)];end
p.(w.(l,[1,2,3,4,9,3,4,9,1,2,3,4,9,3,4,9,5,6,7,8,9,1,2,3,4,9,3,4],w),0,p)
