def wrap(string, col_num)
  words = string.split(/\W+/)
  result = ''
  line  = ''
  words.each do |word|
    if line.length == 0
      line += word
    elsif (line.length + word.length + 1) < col_num
      line += ' ' + word
    elsif (line.length + word.length + 1) == col_num
      result += line + ' ' + word + "\n"
      line = ''
    else
      result += line + "\n"
      line = word
    end
  end
  result + line
end


puts wrap('English is a West Germanic language that was first spoken in early medieval England and is now a global lingua franca. English is either the official language or an official language in almost 60 sovereign states. It is the most commonly spoken language in the United Kingdom, the United States, Canada, Australia, Ireland, and New Zealand, and is widely spoken in some areas of the Caribbean, Africa, and South Asia.[6] It is the third most common native language in the world, after Mandarin and Spanish.[7] It is the most widely learned second language and an official language of the United Nations, of the European Union, and of many other world and regional international organisations.', 100)
