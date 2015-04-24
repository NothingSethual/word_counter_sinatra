require('rspec')
require('word_counter')

describe('String#get_count') do
  it('returns the count when no matches are found') do
    expect('I like cats'.get_count('dogs')).to(eq(0))
  end

  it('returns the count when one match is found ') do
    expect('I like cats'.get_count('cats')).to(eq(1))
  end

  it('returns the count when multiple matches are found') do
    expect('I like cats cats'.get_count('cats')).to(eq(2))
  end

  # Primary use case: words at the beginning of a sentence
  # that are capitalized. Verify 'cat' and 'Cat' are matches
  it('ignores capitalization when returning a count') do
    expect('Cats are amazing'.get_count('cats')).to(eq(1))
  end

  it('ignores common punctuation when returning a count') do
    expect('I love cats!'.get_count('cats')).to(eq(1))
  end
end
