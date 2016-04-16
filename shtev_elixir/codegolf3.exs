w={"Head, ","shoulders, ","knees and ","toes\n","and eyes ","and ears ","and mouth and ", "nose\n"}
p=[0,1,2,3,2,3]
for s<-0..8, do: IO.puts(for m<-p++p++[4,5,6,7]++p do if m<s do String.replace(elem(w,m),~r/\w+/,"...")else elem(w,m)end end)
