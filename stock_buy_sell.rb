arr = [17,3,6,9,15,8,6,1,10]
# arr = [100,200,300,400]
stack = []
left = Array.new(arr.length,-1)

arr.each_with_index do |num, i|
    while stack.empty? == false && arr[stack[stack.length - 1]] > num
        stack.pop
    end
    if stack.empty? == true
        left[i] = -1
        stack.push(i)
    else
        left[i] = stack[stack.length - 1]
    end
end

max = 0
x = -1
y = -1

left.each_with_index do |num, i|
    if(num != -1)
        res = arr[i] - arr[left[i]]
        if res > max 
            max = res
            x = left[i]
            y = i
        end
    end
end

puts x.to_s + " " + y.to_s if x != -1