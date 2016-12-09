class Bottles
	def initialize(number_of_bottles)
		@number_of_bottles = number_of_bottles
	end

	def song
		@number_of_bottles.downto(0).map{|number| verse(number)}.join
	end

	def verse(number)
		"#{quantity(number)} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.\n".capitalize + "#{action(number)}, #{quantity(number - 1)} #{container(number - 1)} of beer on the wall.\n\n".capitalize
	end

	private

	def quantity(number)
		if  number < 0
			@number_of_bottles
		elsif number == 0
			"no more"
		else
			number
		end
	end

	def container(number)
		number == 1 ? "bottle" : "bottles"
	end

	def action(number)
		number == 0 ? "go to the store and buy some more" : "take #{pronoun(number)} down and pass it around"
	end

	def pronoun(number)
		number == 1 ? "it" : "one"
	end
end
