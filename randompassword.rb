#!/usr/bin/env ruby
# frozen_string_literal: true

# https://stackoverflow.com/questions/39376428/secure-password-generation-with-random-chars
# https://stackoverflow.com/questions/7007568/new-to-ruby-how-do-i-shuffle-a-string

require 'securerandom'

def string_shuffle!(string)
  string.chars.shuffle.join
end

letters = SecureRandom.send(:choose, [*'A'..'Z', *'a'..'z'] - %w[I l 1 O 0], 6)
numbers = SecureRandom.send(:choose, [*'0'..'9'] - %w[I l 1 O 0], 2)
specials = SecureRandom.send(:choose, %w[/ ! @ # $ % & ( ) < >], 1)

puts string_shuffle!(letters + numbers + specials)
