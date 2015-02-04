def uniq_chars1? (string)
  chars = {}
  string.each_char do |char|
    if chars[char]
      return false
    else
      chars[char] = char
    end
  end
  true
end

def uniq_chars2? (string)
  for i in 0...string.length-1
    for j in (i+1)...string.length
      return false if string[i] == string[j]
    end
  end
  true
end
