def caesar_cipher(string, shift_factor)
    alphabet = Array('a'..'z')
    punctuation_signs = Array('!'..'?')
    new_index = []
    new_string = []
    string.chars.each do |ch|
        if (punctuation_signs.any?(ch) || ch == " ")
            new_string << ch
        else
            new_index << alphabet.find_index { |letter| letter == ch.downcase }.to_i + shift_factor
            if ch == ch.upcase
                new_string << alphabet[(new_index.last) % 26].upcase
            else 
                new_string << alphabet[(new_index.last) % 26]
            end
        end
    end
    p new_string.join
end

caesar_cipher("What a string!", 5)