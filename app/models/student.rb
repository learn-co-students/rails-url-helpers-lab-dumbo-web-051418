class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    case self.active
    when true
      self.active = false
    when false
      self.active = true 
    end
  end
end
