def fib(n)
    return n if n == 0 || n == 1
    prev1 = 0
    prev2 = 1
    i = 2
    while i <= n
        res = prev1 + prev2 
        prev1 = prev2
        prev2 = res
        i += 1
    end
    prev2
end

puts fib(10)