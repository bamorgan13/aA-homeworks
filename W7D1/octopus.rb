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

def dominant(fish) #O(nlogn)
    sorted = merge_sort(fish)
    sorted.first
end

def merge_sort(arr)
    return arr if arr.length <= 1
    midpoint = arr.length / 2
    sorted_left = merge_sort(arr[0...midpoint])
    sorted_right = merge_sort(arr[midpoint..-1])
    merge(sorted_left, sorted_right)
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left.first <= right.first
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged + left + right
end