require "./wordplay.rb"

# p %q{Hello. This is a test of basic 
# sentence splitting. It even works over multiple lines. }.sentences

# p "This is a test of words' capabilities".words

# p %q{Hello. This is a test of basic sentence splitting.
#      It even works over multiple lines }.sentences[1].words[3]

# hot_words = %w{test ruby great}
# my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."
# t = my_string.sentences.find_all do |s|
#     s.downcase.words.any? { |word| hot_words.include?(word) }
# end

# p t.to_a

# puts WordPlay.best_sentences(my_string.sentences, hot_words)    

# puts WordPlay.switch_pronouns("Your cat is fighting with my cat")
# puts WordPlay.switch_pronouns("You are my robot")
# puts WordPlay.switch_pronouns("I gave you hope")
# puts WordPlay.switch_pronouns("You gave me hope")

# while input = gets
#     puts '>> ' + WordPlay.switch_pronouns(input).chomp + '?'
# end