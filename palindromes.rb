#!/usr/bin/env ruby

# monkey patch string to add a method that returns true
# if the string is a palindrom and false otherwise
class String
  def is_palindrome
    if to_s.length == 0 or to_s.length == 1
      true
    elsif to_s[0] == to_s[-1]
      to_s[1..-2].is_palindrome
    else
      false
    end
  end
end

# iterate through strings printing palindromes
def print_palindromes(start,finish)
  (start..finish).each { |s| puts s if s.is_palindrome }
end

# go!
print_palindromes("aaa","zzz")
