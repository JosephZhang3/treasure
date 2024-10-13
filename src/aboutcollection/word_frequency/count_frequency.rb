# frozen_string_literal: true

def words_from_string(s)
  s.downcase.scan(/[\w']+/)
end

def test_get_words
  arr = words_from_string('aPPle peaR Apple juIce pEar peAr')
  p arr
end

# test_get_words

def count_frequency(word_list)
  # hash k-v 的初始值设为0
  counts = Hash.new(0)
  # Map<String, Integer> map = new HashMap<>();

  # each do
  word_list.each do |word|
    counts[word] += 1
    #    等价的Java语句
    #    if(map.get(word) == null){
    #      map.put(word, 1);
    #    } else {
    #      map.put(word, map.get(word) + 1);
    #    }
  end
  counts
end

def test_count_frequency
  p '单词计数'
  arr = words_from_string('aPPle peaR Apple juIce pEar peAr')
  words_count = count_frequency(arr)
  p words_count
end

# test_count_frequency
