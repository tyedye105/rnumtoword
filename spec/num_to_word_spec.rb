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

  it('Will translate a three digit number that ends in a teen into a word.') do
    expect(118.num_to_words()).to(eq("one hundred eighteen"))
  end

  it('Will translate any other three digit number into a word.') do
   expect(184.num_to_words()).to(eq("one hundred eighty four"))
  end

  it('Will translate any four digit number that ends in teen into a word') do
    expect(4313.num_to_words()).to(eq("four thousand three hundred thirteen"))
  end

  it('Will translate any other four digit number into a word') do
    expect(2355.num_to_words()).to(eq("two thousand three hundred fifty five"))
  end

  it("Will translate any five digit number starting with a teen, and ending with a teen into a word") do
    expect(15413.num_to_words()).to(eq("fifteen thousand four hundred thirteen"))
  end

  it("Will translate any five digit number starting with a teen, but not ending in a teen") do
    expect(15425.num_to_words()).to(eq("fifteen thousand four hundred twenty five"))
  end
end
