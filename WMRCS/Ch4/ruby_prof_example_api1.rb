require 'date'
require 'rubygems'
require 'ruby-prof'

GC.disable

result = RubyProf.profile do 
  Date.parse("2014-07-01") 
end

printer = RubyProf::FlatPrinter.new(result)
printer.print(File.open("ruby_prof_ex1.txt", "w+"))
