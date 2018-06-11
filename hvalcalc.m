function [hval] = hvalcalc(theta,X)

hval=1+exp((-1)*theta'*X);
hval=1./hval;
hval=hval';