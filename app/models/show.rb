class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.map{|t| t.actor.full_name}
    end
end