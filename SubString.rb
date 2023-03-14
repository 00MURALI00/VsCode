def substring (str, dic)
    res = Hash.new(0)
    for x in dic
        cnt = str.scan(/(?=#{x})/).count
        if cnt != 0
            res[x] = cnt
        end
    end
    res
end

dic = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substring("Howdy partner, sit down! How's it going?", dic)
puts substring("below", dic)