a="and ";
b="..., ";
c="... ";
d="...";

e=[["knees ",a],"toes"];
f=[["Head, ","shoulders, "|e],[b,b,[c,c],d],[1,2,3,4]];
g=[e,[[c,c],d],[3,4]];
h=[[[a,"eyes "],[a,"ears "],[a,"mouth ",a],"nose"],[[c,c],[c,c],[c,c,c],d],[5,6,7,8]];

i = fn
    ([[j|k],[_|m],[n|o]],p,q) when p<n -> [j|q.([k,m,o],p,q)];
    ([[_|k],[l|m],[n|o]],p,q) when p>=n -> [l|q.([k,m,o],p,q)];
    ([[],[],[]],_,_) -> []
end

r = fn
    ([s|t],u,v) -> List.to_string(List.flatten(i.(s,u,i))) <>
            if t==[] do "" else "\n" end <> v.(t,u,v)
    ([],_,_)->""
end

w = fn
    (_,9,_) -> "";
    (x,y,z) -> r.(x,y,r) <> if y<8 do "\n\n" else "" end <> z.(x,y+1,z)
end

IO.puts w.([f,g,f,g,h,f,g],0,w)
