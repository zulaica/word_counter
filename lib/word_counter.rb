class String
  define_method(:word_counter) do |word_to_count|

    total = 0
    words_to_check = split()

    if words_to_check.include? word_to_count
      total = total.+(1)
    end

    total

  end
end
