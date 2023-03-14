# def caesar_cipher (str, k)
#     result = ''
#     str.each_char do |chars|
#         if (chars.ord >= 65 && chars.ord <= 90) || (chars.ord >= 95 && chars.ord <= 122)     
#             for j in (1..k) do
#                 if chars.ord == 90
#                     chars = 65.chr
#                 elsif chars.ord == 122
#                     chars = 95.chr
#                 else
#                     chars = (chars.ord + 1).chr
#                 end
#             end
#         end
#         result += chars
#     end
#     result
# end
def caesar_cipher (str, k)
    result = ''
    str.each_char do |chars|
        if (chars.ord >= 65 && chars.ord <= 90) || (chars.ord >= 97 && chars.ord <= 122)     
            base = chars.ord < 91 ? 65 : 97
            ch = (((chars.ord - base) + k) % 26) + base;
            result += ch.chr
        else
            result += chars
        end
    end
    result
end

puts caesar_cipher("What a string!", 5)