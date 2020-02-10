class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        output = []
        roles = Character.all.select{|r| r.actor == self}
        roles.each {|r|
            output << "#{r.name} - #{r.show.name}"
        }
        output
    end
end