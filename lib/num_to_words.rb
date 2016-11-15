class Fixnum
  define_method(:num_to_words) do
    digits = self.to_s.size

    individuals = {
      0 => "",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
    }

    deca = {
      2 => "twenty",
      3 => "thirty",
      4 => "forty",
      5 => "fifty",
      6 => "sixty",
      7 => "seventy",
      8 => "eighty",
      9 => "ninety",
      0 => "",
    }

    hundreds = {
        1 => "one hundred",
        2 => "two hundred",
        3 => "three hundred",
        4 => "four hundred",
        5 => "five hundred",
        6 => "six hundred",
        7 => "seven hundred",
        8 => "eight hundred",
        9 => "nine hundred",
        0 => ""
    }

    thousands = {
        1 => "one thousand",
        2 => "two thousand",
        3 => "three thousand",
        4 => "four thousand",
        5 => "five thousand",
        6 => "six thousand",
        7 => "seven thousand",
        8 => "eight thousand",
        9 => "nine thousand",
        0 => ""
    }

      string_number = self.to_s
      numbers = string_number.split("")
      last_two = numbers.last(2)
    if digits.eql?(1)
      individuals.fetch(self)
    elsif digits.eql?(2) && self.<(20)
        individuals.fetch(self)
    elsif digits.eql?(2)
      tens_word = deca.fetch(numbers[0].to_i)
      singles_word = individuals.fetch(numbers[1].to_i)
      words = tens_word.concat(" " + singles_word)
    elsif digits.eql?(3) && last_two.join("").to_i.<(20)
      hundreds_word = hundreds.fetch(numbers[0].to_i)
      teens_word = individuals.fetch(last_two.join("").to_i)
      words = hundreds_word.concat(" " + teens_word)
    elsif digits.eql?(3)
        singles_word = individuals.fetch(numbers[2].to_i)
        tens_word = deca.fetch(numbers[1].to_i)
        hundreds_word = hundreds.fetch(numbers[0].to_i)
        words = hundreds_word.concat(" " +tens_word+ " "+singles_word)
    elsif digits.eql?(4) && last_two.join("").to_i.<(20)
        thousands_word = thousands.fetch(numbers[0].to_i)
        hundreds_word = hundreds.fetch(numbers[1].to_i)
        teens_word = individuals.fetch(last_two.join("").to_i)
        words = thousands_word.concat(" "+ hundreds_word +" " + teens_word)
      else
        singles_word = singles.fetch(numbers[2].to_i)
        tens_word = tens.fetch(numbers[1].to_i)
        hundreds_word = hundreds.fetch(numbers[0].to_i)
        words = hundreds_word.concat(" " +tens_word+ " "+singles_word)

    end
  end
end
