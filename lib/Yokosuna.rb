class Yokosuna

	attr_reader :seeds,
							:vegetable,
							:pizza

	def initialize

		# factory
		@seeds = :seeds

		@textiles = :textiles
		@sugar_and_spices = :sugar_and_spices
		@glass = :glass
		@metal = :metal
		@wood = :wood
		@plastic = :plastic
		@minerals = :minerals
		@chemicals = :chemicals
		@animal_food = :animal_food
		@electrical_components = :electrical_components


		@vegetable = [@seeds] * 2

		# building supplies store

		@nails = [@metal] * 2
		@planks = [@wood] * 2
		@bricks = [@minerals] * 2
		@cement = [@minerals] * 2 + [@chemicals]
		@glue = [@plastic] + [@chemicals] * 2
		@paint = [@metal] * 2 + [@minerals] + [@chemicals] * 2

		# hardware store

		@hammer = [@metal] + [@wood]
		@measuring_tape = [@metal] + [@plastic]
		@shovel = [@metal] + [@wood] + [@plastic]
		@cooking_utensils = [@metal] * 2 + [@plastic] * 2 + [@wood] * 2
		@ladder = [@planks] * 2 + [@metal] * 2
		@drill = [@metal] * 2 + [@plastic] * 2 + [@electrical_components]

		# gardening supplies

		@grass = [@seeds] + [@shovel] * 2
		@tree_saplings = [@seeds] * 2 + [@shovel]
		@garden_furniture = [@planks] * 2 + [@plastic] * 2 + [@textiles] * 2
		@fire_pit = [@bricks] * 2 + [@shovel] + [@cement] * 2

		# farmer's market


		@beef = [@animal_food] * 3
		@flour_bag = [@seeds] * 2 + [@textiles] * 2
		@fruit_and_berries = [@seeds] * 2 + [@tree_saplings]

		@cream = [@animal_food]
		@corn = [@minerals] + [@seeds] * 4
		@cheese = [@animal_food] * 2

		# Furniture Store

		@chair = [@wood] * 2 + [@nails] + [@hammer]
		@table = [@planks] + [@nails] * 2 + [@hammer]
		@home_textiles = [@textiles] * 2 + [@measuring_tape]
		@couch = [@textiles] * 3 + [@glue] + [@drill]
		@cupboard = [@planks] * 2 + [@glass] + [@paint]

		# donut shop

		@donuts = [@flour_bag] + [@sugar_and_spices]
		@green_smoothie = [@vegetable] + [@fruit_and_berries]
		@bread_roll = [@flour_bag] * 2 + [@cream]
		@cherry_cheesecake = [@flour_bag] + [@fruit_and_berries] + [@cheese]
		@frozen_yogurt = [@fruit_and_berries] + [@cream] + [@sugar_and_spices]

		# Fashion Store

		@cap = [@textiles] * 2 + [@measuring_tape]
		@shoes = [@textiles] * 2 + [@plastic] + [@glue]
		@watch = [@plastic] * 2 + [@glass] + [@chemicals]
		@business_suits = [@textiles] * 3 + [@measuring_tape] + [@glue]

		# Fast Food Restaurant

		@ice_cream_sandwich = [@bread_roll] + [@cream]
		@pizza = [@flour_bag] + [@cheese] + [@beef]

		# Home Appliances

		@bbq_grill = [@metal] * 3 + [@cooking_utensils]

	end

	def self::yokosuna
		hash = Hash.new
		self.flatten.uniq.each do |i|
			hash[i] = item.flatten.count(i)
		end
		hash
	end

end
p Yokosuna.new.pizza.yokosuna
