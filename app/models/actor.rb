class Actor < ActiveRecord::Base
    has_many :characters
    has_many :show, through: :characters

    def list_roles

    end

    def full_name
      "#{self.first_name} #{self.last_name}"
    end
end
