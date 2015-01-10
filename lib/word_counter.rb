class String
  define_method(:word_counter) do |word_to_count|

    total = 0
    words_to_check = downcase().split()

    words_to_check.each() do |current_word|
      if current_word.length().eql?(word_to_count.length()) && current_word.include?(word_to_count.downcase())
          total = total.+(1)
      end
    end

    total

  end
end
