# frozen_string_literal: true

require_relative 'count_frequency'

raw_text = "The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count."

word_list = words_from_string(raw_text)

counts = word_list.tally

sorted = counts.sort_by { |_, count| count }

top_five = sorted.last(5)

# map方法接受一个代码块 {...} 作为入参
puts 'map with block-'
ss = top_five.reverse.map { |word, count| "#{word}: #{count}" }
puts ss

puts 'bester version-'
ss2 = words_from_string(raw_text)
      .tally
      .sort_by { |_, count| count }
      .last(5)
      .reverse
      .map { |word, count| "#{word}: #{count}" }
puts ss2

puts 'bester_word_count_with_tap'
words_from_string(raw_text)
  .tally
  .sort_by { |_word, count| count }
  .tap { |result| puts "sorted tally: #{result}\n\n" }
  .last(5)
  .tap { |result| puts "only the last five: #{result}\n\n" }
  .reverse
  .tap { |result| puts "reversed:#{result}\n\n" }
  .map { |word, count| "#{word}: #{count}" }
