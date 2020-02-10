class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(name)
       n = Network.new
       pp name
       n.call_letters = name[:call_letters]
       pp n
        self.network = n
        n
    end

    def actors_list
        self.actors.map{|a| a.full_name}
    end
    
end