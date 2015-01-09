require('rspec')
require('word_counter')

describe('String#word_counter') do

  it("compares two identical strings and returns a value of 1 because they match.") do
    expect(("a").word_counter("a")).to(eq(1))
    expect(("pizza").word_counter("pizza")).to(eq(1))
  end

  it("compares two unlike strings and returns a value of 0 because they do not match.") do
    expect(("a").word_counter("I")).to(eq(0))
    expect(("coffee").word_counter("tea")).to(eq(0))
  end

end
