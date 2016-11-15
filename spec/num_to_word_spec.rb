require('rspec')
require('num_to_words')

describe('Fixnum#num_to_words') do
  it('Will tranlate a single digit number to a word') do
    expect(4.num_to_words()).to(eq("four"))
  end
end
