#write your code here

def translate (string)
	wovels = ["a", "e", "i", "o", "u"]
	string2 = []	
	string.split.each do |word|
    if wovels.include?(word[0])
      word += "ay" 
    elsif !wovels.include?(word[0]) && !wovels.include?(word[1]) && !wovels.include?(word[2])
      slajs = word.slice!(0..2)
      word = word + slajs + "ay"
    elsif word[1..2] == "qu"
    	slajs = word.slice!(0..2)
    	word = word + slajs + "ay"
    elsif !wovels.include?(word[0]) && !wovels.include?(word[1])
      slajs = word.slice!(0..1)
      word = word + slajs + "ay"
    elsif word[0..1] == "qu"
    	slajs = word.slice!(0..1)
    	word = word + slajs + "ay"
    elsif !wovels.include?(word[0])
      slajs = word.slice!(0)
      word = word + slajs + "ay"
    end
    string2 << word
  end
  string2.join(" ")
  
end

