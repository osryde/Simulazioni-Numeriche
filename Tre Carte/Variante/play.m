function bool = play(game)

    hand = [0 0 0];
    winner = randi(3);
    choice = randi(3);
    hand(winner) = 1;

    if game == 1
        bool = hand(choice);
    end

    if game == 2
        new = 0;
        for i=1:3
            if i ~= choice && hand(i) == 1
                new = 1;
            end
        end
        bool = new;
    end
    
    if game == 3
        index = 0;
        for i=1:3
            if i ~= choice && hand(i) ~= 1
                index = i;
            end
        end

        new_array = [];

        for i=1:3
            if i ~= index
                new_array = [hand(i) new_array];
            end
        end
        
        bool = new_array(randi(2));
    end
end

