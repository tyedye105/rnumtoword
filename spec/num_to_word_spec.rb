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

  it("Will translate any five digit number not starting with, but ending in, a teen to a word") do
    expect(32415.num_to_words()).to(eq("thirty two thousand four hundred fifteen"))
  end

  it("Will translate any other five digit number to a word") do
    expect(32425.num_to_words()).to(eq("thirty two thousand four hundred twenty five"))
  end

  it("will translate a six digit number not including any teen numbers into words") do
    expect(123456.num_to_words()).to(eq("one hundred twenty three thousand four hundred fifty six"))
  end

  it("Will translate a six digit number including a teen at the end into words")do
    expect(231413.num_to_words()).to(eq("two hundred thirty one thousand four hundred thirteen"))
  end

  it("Will translate a six digit number including a teen in the 2nd and 3rd positions")do
    expect(213431.num_to_words()).to(eq("two hundred thirteen thousand four hundred thirty one"))
  end

  it("Will translate a six digit number including a teen in the 2nd and 3rd positions and last positions")do
    expect(213413.num_to_words()).to(eq("two hundred thirteen thousand four hundred thirteen"))
  end

  it("Will translate a seven digit number including no teens")do
    expect(5243425.num_to_words()).to(eq("five million two hundred forty three thousand four hundred twenty five"))
  end

  it("Will translate a seven digit number with a teen at the end")do
    expect(5243417.num_to_words()).to(eq("five million two hundred forty three thousand four hundred seventeen"))
  end

  it("Will translate a seven digit number with a teen at the end")do
    expect(5218425.num_to_words()).to(eq("five million two hundred eighteen thousand four hundred twenty five"))
  end

  it("Will translate a seven digit number with a teen in the 3rd and 4th positions and a teen at the end to a word")do
    expect(5218412.num_to_words()).to(eq("five million two hundred eighteen thousand four hundred twelve"))
  end
 end
