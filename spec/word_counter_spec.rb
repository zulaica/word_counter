require('rspec')
require('word_counter')

describe('Array#word_counter') do

  it("compares two identical strings and returns a value of 1 because they match.") do
      expect((["a"]).word_counter("a")).to(eq(1))
      expect((["pizza"]).word_counter("pizza")).to(eq(1))
  end

end
