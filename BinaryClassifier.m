clear all;

load trainX.dat;
load trainY.dat;
X=trainX';
Y=trainY;
n=size(X,2);
p=ones(1,n);
X=[p ; X];
m=size(X,1);
theta=zeros(m,1);
theta=theta+0.1;

prev=jval(theta,X,Y)
curr=0;
epsi=inf;

while epsi>0.00000001
    theta=thetacalc(theta,X,Y);
    curr=jval(theta,X,Y);
    epsi=prev-curr
    prev=curr;
end

theta
hvalcalc(theta,X)

load testX.dat;
load testY.dat;
X=testX';
Y=testY
n=size(X,2);
p=ones(1,n);
X=[p ; X];

o=hvalcalc(theta,X);
o=(o>0.5)

plotconfusion(Y',o');