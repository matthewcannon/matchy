class Sut
	def self.remove_all_things
		system('mongo < "db.things.remove()"')
	end
	def self.get_number_of_things
		return 0
	end
end
