class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def list_roles
      roles = []
      self.characters.each do |c|
        roles << "#{self.name}" - "#{self.show}"
      end
      roles
    end

    def full_name
      "#{self.first_name} #{self.last_name}"
    end
end
