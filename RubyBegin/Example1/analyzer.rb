
#File.open("text.txt").each do |line|
#    line_count += 1
#    text << line
#end

stopwords = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join

total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/,'').length
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word)}
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentenced = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentenced = ideal_sentenced.select{|sentence| sentence =~ /is|are/ }

#puts "This is a-text".scan(/\w+/).length
#puts "This is a-text".split.length
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraps"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentenced.join(". ") + "\n\n"
puts "--End of analysis"


