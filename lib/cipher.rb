# 'h'.ord == 104
# 109.chr == 'm'

def convert_char(char, num)
    newchar = ''
    if(char.ord.between?(65,90))
        if(char.ord + num > 90)
            newchar = ((char.ord + num)-26).chr
        elsif(char.ord + num < 65)
            newchar = ((char.ord + num)+26).chr
        else
            newchar = (char.ord + num).chr
        end
    elsif(char.ord.between?(97,122))
        if(char.ord + num > 122)
            newchar = ((char.ord + num)-26).chr
        elsif(char.ord + num < 97)
            newchar = ((char.ord + num)+26).chr
        else
            newchar = (char.ord + num).chr
        end
    else
        newchar = char
    end
    newchar
end


def caesar_cipher(string, num)
    encoded_string = ''
    string.each_char do |char|
        encoded_string << convert_char(char,num)
    end
    encoded_string
end

def caesar_decipher(encoded_string, num)
    decoded_string = ''
    encoded_string.each_char do |char|
        decoded_string << convert_char(char, -num)
    end
    [encoded_string,decoded_string]
end
