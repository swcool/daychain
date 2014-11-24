require 'date'
require 'colorize'

module Daychain
  def self.output
    time = DateTime.now

    puts "\n  #{time.year}\n".yellow
    out = ->(a) { (1..a).each { |d| print d, ' ' }}
    (1..12).each do |m|
      case m
      when 2
        if Date.leap? (time.year)
          out.call(29)
        else
          out.call(28)
        end
      when 4, 6, 9, 11
        out.call(30)
      else
        out.call(31)
      end
      print "\n"
      print "\n" if m%3 == 0
    end
  end
end

# Daychain.output
