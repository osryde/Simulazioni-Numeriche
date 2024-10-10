function [res_medio, res] = urne_e(N,Iter,n0)
%[res_medio, res] = urne_e(N,Iter,n0)
%...
res = zeros(1,Iter+1);

if (nargin==2)
    n0=N;
end

res(1) = n0;
M = zeros(1,N);
M(1:n0) = 1;

for j=1:Iter
    cc = randi(N);
    M(cc) = ~M(cc);
    res(j+1) = sum(M);
end
res_medio = mean(res);

end