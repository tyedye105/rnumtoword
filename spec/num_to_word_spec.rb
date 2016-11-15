require('rspec')
require('num_to_words')

describe('Fixnum#num_to_words') do
  it('Will tranlate a single digit number to a word') do
    expect(4.num_to_words()).to(eq("four"))
  end

  it('Will tranlate a two digit, non teen number to a word') do
    expect(84.num_to_words()).to(eq("eighty four"))
  end

  it('Will tanslate a two digit, teen number into a word.(Include ten, eleven, and twelve)') do
    expect(18.num_to_words()).to(eq("eighteen"))
  end

  # it('Will translate a three digit number into a word.') do
  #     expect(118.num_to_words()).to(eq("one hundred eighteen"))
  # end
  #
  # it('Will translate a four digit number into a word.') do
  #     expect(2184.num_to_words()).to(eq("two thousand one hundred eighty four"))
  # end


end
