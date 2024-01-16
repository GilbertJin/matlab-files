format rat
syms a b c d e f g h k l

%solve('c^2-f^2-1=0','a+c-k-f*g=0','b-f-l+c*d=0','c*e-f*h=0','a^2-g^2-k^2=0','d-g+a*b-k*l=0','a+e-k-g*h=0','b^2+d^2-l^2=0','b-h-l+d*e=0','e^2-h^2+1=0')

[a,b,c,d,e,f,g,h,k,l]=solve(c^2-f^2-1==0,a+c-k-f*g==0,b-f-l+c*d==0,c*e-f*h==0,a^2-g^2-k^2==0,d-g+a*b-k*l==0,a+e-k-g*h==0,b^2+d^2-l^2==0,b-h-l+d*e==0,e^2-h^2+1==0)
