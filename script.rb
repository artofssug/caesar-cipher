# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
def caesar_cipher(string, shift_factor)
    punctuation_signs = ('!'..'?')
    caesar_ord = string.split('').map { |chr| (chr == " " or punctuation_signs.any?(chr)) ? chr.ord : chr.ord + shift_factor }
    caesar_string = caesar_ord.map do |chr|
        if chr > 122
            chr = (96 + (chr % 122)).chr
        elsif chr.between?(91, 96)
            chr = (64 + (chr % 90)).chr
        else
            chr.chr
        end
    end
    p caesar_string.join
end


caesar_cipher("What a string!", 5)