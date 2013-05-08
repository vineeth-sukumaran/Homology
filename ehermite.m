function E = ehermite(a,b);

% Elementary Hermite tranformation.
%
% For integers a and b, E = ehermite(a,b) returns
% an integer matrix with determinant 1 such that E * [a;b] = [g;0],
% where g is the gcd of a and b.
% E = ehermite(a,b)
%
% This function is in some ways analogous to GIVENS.

% John Gilbert, 415-812-4487, December 1993
% gilbert@parc.xerox.com 
% Xerox Palo Alto Research Center 

[g,c,d] = gcd(a,b);
if g
E = [c d ; -b/g a/g];
else
E = [1 0 ; 0 1];
end