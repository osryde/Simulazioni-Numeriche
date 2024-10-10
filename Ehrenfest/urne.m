function res = urne(N, T, n0)
    if nargin == 2
        res(1) = randi(N);
    else
        res(1) = n0;
    end
    
    for ii = 2 : T
        if randi(N) <= res(ii - 1)
            res(ii) = res(ii - 1) - 1;
        else
            res(ii) = res(ii - 1) + 1;
        end
    end
end

