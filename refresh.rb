class Goat
  attr_accessor :age, :pokes, :milk_in_udders, :moody
  attr_reader :name
  attr_writer

  def initialize(age, name)
    @age=age
    @name=name
    @pokes=0
    @milk_in_udders=1.00
    @moody=false
  end

  def poke
    if @pokes<3
      puts "baa"
    else
      puts "BAAAAAAAAA GO AWAY"
      @moody=true
    end
    @pokes = @pokes + 1
  end

  def milk
    puts "IT'S MILKING TIME"
    amount_milked = @milk_in_udders.to_f * 0.50
    puts "You have milked #{amount_milked} ml of milk."
    @milk_in_udders = amount_milked
  end

  def feed(food)
    puts "Om nom nom. I'm eating #{food}."
    if food == "grass"
      @milk_in_udders = @milk_in_udders * 1.30
    elsif food == "muesli"
      @milk_in_udders = @milk_in_udders * 1.40
    elsif food == "tofurkey"
      @milk_in_udders = @milk_in_udders * 1.25
    else
      @milk_in_udders = @milk_in_udders * 0.90
      puts "BAAAAA"
    end
  end
end

billy=Goat.new("billy", 2)
billy.feed("muesli")
billy.milk
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
billy.poke
puts billy.pokes