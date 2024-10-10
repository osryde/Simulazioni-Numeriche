function WF = TreCarte(N)
% WF = TreCarte(N)
% Ripete N volte il gioco delle tre carte
% ritorna in WF la frequenza di vincita delle 
% tre diverse strategie di gioco

if nargin == 0
   N = 1000000
end

WF = zeros(1,3);
cards = [0 0 1];

for i=1:N,
    
    % mescolo le carte
    cards = cards(randperm(3));
    % scelgo una carta
    scelta = cards(randi(3));
    % la strategia 3 sceglie a caso una delle due carte coperte
    rr = randi(2); % rr=1, mantengo la prima scelta; rr=2, cambio carta;
    
    if scelta == 1,
        
        WF(1) = WF(1)+1;
        if rr == 1
            WF(3) = WF(3) + 1;
        end
        
    else
        
        WF(2) = WF(2)+1;
        if rr == 2
            WF(3) = WF(3) + 1;
        end
        
    end
    
end

WF = WF/N;

bar(WF);
hold on
title(num2str(N));
axis([0.5 3.5 0 0.9]);
plot([0 3.5],[1/3 1/3],'b')
plot([0 3.5],[2/3 2/3],'r')
plot([0 3.5],[1/2 1/2],'g')
hold off

end