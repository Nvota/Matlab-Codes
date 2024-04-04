function eps = macheps 
 %
% macheps approximates the machine epsilon, eps.
%
% No input data needed.
%
% eps is defined to be the smallest positive float that satisfies
%
%             fl(1 + e) > 1,
%
% We let e be a variable that converges to eps from above,
% so we will start e out big and then begin cutting it in half;
% at each step we will test to see if  fl(1+e) > 1.
% If the test fails (that is, if fl(1+m) == 1) then e is one
% iteration too small, so we approximate me by 2e.
  
e=1;   %Start e out big
while (1+e) > 1  %testing the condition fl(1+e)>1
  e=e/2; %if here then we passed the test, so e is >= mu, so we halve e
end
eps = 2*e  % If we get here, then e failed the test, which makes e
         % smaller than mu, so we set eps = 2e.
endfunction
