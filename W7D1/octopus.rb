def sluggish(fish) #O(n^2)
    fish.each_with_index do |fish_1, idx_1|
        longest = fish_1.length
        fish.each_with_index do |fish_2, idx_2|
            next if idx_1 == idx_2
            longest = fish_2.length if fish_2.length > longest
        end
        return fish_1 if fish_1.length == longest
    end
end