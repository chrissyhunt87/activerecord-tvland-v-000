class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def list_roles
      
    end

    def full_name
      self.pluck(:first_name, :last_name).join(" ")
    end
end
