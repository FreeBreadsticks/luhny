module Luhn
  def self.is_valid?(number)
    rev_num = number.to_s.reverse
    count = 0
    sum = 0
    rev_num.each_char do |chr|

      n = chr.to_i

      if count.odd?
        n = n * 2
      end

      if n >= 10
        n = n - 9
      end

      # puts n
      count = count + 1
      sum = sum + n

    end
    # puts "sum: #{sum % 10}"
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

Luhn.is_valid?(4194560385008504)
