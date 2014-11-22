require 'date'

class String
  def black;          "\033[30m#{self}\033[0m" end
  def red;            "\033[31m#{self}\033[0m" end
  def green;          "\033[32m#{self}\033[0m" end
  def brown;          "\033[33m#{self}\033[0m" end
  def blue;           "\033[34m#{self}\033[0m" end
end

time = DateTime.now

puts "\n  #{time.year}\n\n".brown
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
