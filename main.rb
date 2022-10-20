def caesar_cipher(str, num)
    alphabet = ("a".."z").to_a

    str.split("").map do |char|
        capitalized = (char == char.upcase)
        char = char.downcase
        if alphabet.include?(char)
            char = alphabet[(alphabet.index(char) + num) % alphabet.length]
            
            capitalized ? char.upcase : char
        else
            char
        end
    end.join("")
end