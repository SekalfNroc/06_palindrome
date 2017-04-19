#!/usr/bin/env ruby

puts "Type in a phrase."
phrase = gets.chomp

class String
  def palindrome?
    chars.each_with_index do |character, index|
      opposite_index = length - index - 1
      opposite_character = self[opposite_index]

      if not opposite_character == character then
        return false
      end
    end

    return true
  end
end

puts phrase.palindrome?
