function a = vectangle360(v1,v2)
v1 = [v1;0]; v2 = [v2;0];
n = [0;0;1];
x = cross(v1,v2);
c = sign(dot(x,n)) * norm(x);
a = atan2(c,dot(v1,v2));
end