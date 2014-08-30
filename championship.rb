require_relative("player")

class Championship
	
	attr_accessor :name, :players

	def initialize(name, max_players)
		@name = name
		@max_players = max_players
		
		@players_qtt = 0
		@players = []
	end

	def add_player (new_player)
		@players.insert(@players.length,new_player)
	end

	def del_player (name)
		@players.each do |p|
			if p.name.equal? name
				@players.delete(p)
			end
		end
	end

end