def two_sum(nums, target)
    h = Hash.new()
    nums.each_with_index do |num, i|
        return [h[target - num], i] if h.include?(target - num)
        h[num] = i
    end
end


puts two_sum([2,7,11,15], 9)