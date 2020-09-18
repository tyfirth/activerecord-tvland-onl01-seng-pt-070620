class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    chars = []
  #  binding.pry
    chars = self.characters.collect { |t|
      chars << t.name
    }
#binding.pry
  end

  #def build_network(attr)
    #net = Show.find_or_create_by(id: = nil, self.name, :network_id = nil)
  #end

end
