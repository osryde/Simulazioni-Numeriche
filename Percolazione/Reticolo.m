% Il numero di elementi colorati si soffermerà a circa il 70% in questo caso
p = 0.7;
d = 1000;
R = rand(d) < p;

% Somma le colonne
sum(R);

% Somma le colonne e poi la riga ottenuta
sum(sum(R));

% Calcolo la deviazione percentuale
abs(sum(sum(R)) - d * d * p) / (d * d * p)

% Deviazione: Scostamento dal valore medio

% é necessario definire un algoritmo di cluster finding