require('rspec')
require('word_counter')

describe('String#get_count') do
  it('returns 0 when no matches are found') do
    expect('I like cats'.get_count('dogs')).to(eq(0))
  end
end
