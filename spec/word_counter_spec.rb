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

  it("compares two strings and returns the total number of times a given particular word appears in a given string.") do
    expect(("this this this").word_counter("this")).to(eq(3))
    expect(("apple orange apple").word_counter("apple")).to(eq(2))
  end

  it("ignores letter case when comparing words.") do
    expect(("This").word_counter("this")).to(eq(1))
    expect(("This that this").word_counter("this")).to(eq(2))
  end

  it("ignores letter case on both strings when comparing words.") do
    expect(("this").word_counter("This")).to(eq(1))
    expect(("this that this").word_counter("This")).to(eq(2))
  end

end
