def search_range(nums, target)
    res = Array.new()
    binarySearch(0, nums.length - 1, nums, target, res)
    return [-1, - 1] if res.length == 0
    res.sort!
    [res[0], res[res.length - 1]]
end

def binarySearch i, j, nums, target, res
    if(i > j)
        return nil
    end
    mid = ((j - i) / 2) + i
    if nums[mid] == target
        res << mid
        binarySearch(i, mid - 1, nums, target, res)
        binarySearch(mid + 1, j, nums, target, res)
    elsif nums[mid] > target
        binarySearch(i, mid - 1, nums, target, res)
    else
        binarySearch(mid + 1, j, nums, target, res)
    end
end

puts search_range([5,7,7,8,8,10], 8)