class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(n)
    s = Show.new
    s.name = n[:name]
    self.show = s
    s
  end
end