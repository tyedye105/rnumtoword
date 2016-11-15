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
      string_number = self.to_s
      numbers = string_number.split("")
    if digits.eql?(1)
      individuals.fetch(self)
    elsif digits.eql?(2) && self.<(20)
        individuals.fetch(self)
    elsif digits.eql?(2)
        tens_word = deca.fetch(numbers[0].to_i)
        singles_word = individuals.fetch(numbers[1].to_i)
        words = tens_word.concat(" " + singles_word)
    # elsif digits.eql?(3)
    #   if numbers[1].eql?("1")
    #     hundreds_word = hundreds.fetch(numbers[0].to_i)
    #     numbers.shift
    #     string_number = numbers.join("")
    #     teens_word = tens.fetch(string_number.to_i)
    #     words = hundreds_word.concat(" " + teens_word)
    #   else
    #     singles_word = singles.fetch(numbers[2].to_i)
    #     tens_word = tens.fetch(numbers[1].to_i)
    #     hundreds_word = hundreds.fetch(numbers[0].to_i)
    #     words = hundreds_word.concat(" " +tens_word+ " "+singles_word)
    #   end
    # elsif digits.eql?(4)
    #   if numbers[2].eql?("1")
    #     thousands_word =
    #     hundreds_word = hundreds.fetch(numbers[0].to_i)
    #     numbers.shift(2)
    #     string_number = numbers.join("")
    #     teens_word = tens.fetch(string_number.to_i)
    #     words = hundreds_word.concat(" " + teens_word)
    #   else
    #     singles_word = singles.fetch(numbers[2].to_i)
    #     tens_word = tens.fetch(numbers[1].to_i)
    #     hundreds_word = hundreds.fetch(numbers[0].to_i)
    #     words = hundreds_word.concat(" " +tens_word+ " "+singles_word)
    #   end

    end
  end
end
