class HauntedHouse < ApplicationRecord
    has_many :hauntings
    has_many :ghosts, through: :hauntings

    validate :check_number

    def check_number
       if self.address[0].to_i == 0 
            errors.add(:address, "must start with a number")
       end
    end

end
