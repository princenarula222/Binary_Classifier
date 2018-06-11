function [y] = jval(theta,X,Y)

hval=hvalcalc(theta,X);
t=size(X,2);
jvec=-1.*(Y.*log(hval)+(1-Y).*log(1-hval));
y=sum(jvec(:))/t;