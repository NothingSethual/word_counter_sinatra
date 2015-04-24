require('rspec')
require('word_counter')

describe('String#get_count') do
  it('returns the count when no matches are found') do
    expect('I like cats'.get_count('dogs')).to(eq(0))
  end

  it('returns the count when one match is found ') do
    expect('I like cats'.get_count('cats')).to(eq(1))
  end

  it('return the count when multiple matches are found') do
    expect('I like cats cats'.get_count('cats')).to(eq(2))
  end

  it('handles capitalization (ignores capitalization)') do
    expect('Cats are amazing'.get_count('cats')).to(eq(1))
  end

  it('handles common punctuation') do
    expect('I love cats!'.get_count('cats')).to(eq(1))
  end
end
