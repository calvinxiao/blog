$file = 'calvin'
class Calvin
    @@name = "calvin"
    def initialize(a, b)
        @a, @b = a, b 
    end

    def out
        puts @a, " ", @b, " ", @@name
    end
end

calvin = Calvin.new(22, 33)
calvin.out()
p $file
p Calvin::name

x = 2
puts "printing x: #{x}" if x < 3
puts "printing x: #{x}" unless x >= 3

BEGIN {
    p "I am first!"
}
