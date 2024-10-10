function out = puntiRetta(lambda, l, N, x)

% out = PuntiRetta(lambda, l, N, x)
% lambda -> densità dei punti
% l -> ampiezza finestra di osservazione
% N -> Numero di prove
% L_0 = l * x -> Larghezza dell'intervallo dei punti
% out -> Matrice 2xn con prima riga le frequenze e sulla seconda i conteggi


% Controllo sugli argomenti
if nargin < 4 || x < 1000
    x = 1000;
end

n = zeros(1, N);

L_0 = l * x;

% Numero punti (lamba può essere un numero con la virgola)
np = round(lambda*L_0);

punti = rand(np,1) * L_0;
punti = sort(punti); % Su strutture ordinate il find funziona meglio

for i = 1:N
    inizio = round(rand()*(L_0 - l));
    fine = inizio + l;
    
    n(i) = length(find(punti(find(punti > inizio)) < fine));
end

m = min(n):max(n);
nn = hist(n, m);

out(1, :) = nn./N;
out(2, :) = m;

bar(out(2,:), out(1,:));
end