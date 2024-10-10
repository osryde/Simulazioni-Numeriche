function prob = TreRusso(N)


    same = 0;
    change = 0;
    casual = 0;

    for i=1:N
        same = same + play(1);
        change = change + play(2);
        casual = casual + play(3);
    end

    prob = [same change casual]/N;

    strategies = {'Same Strategy', "Change Strategy", 'Random Strategy'}
    figure;
    bar(prob);
    set(gca, 'XTickLabel', strategies, 'XTick', 1:numel(strategies));
    ylabel('probabilities');
    ylim(0:1)

end

