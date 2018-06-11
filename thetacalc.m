function [theta] = thetacalc(theta,X,Y)

m=size(X,2);
n=size(X,1);
hval=hvalcalc(theta,X);
prod=X'.*repmat((hval-Y),1,n);
grad=sum(prod)/m;
theta=theta-0.05*grad';