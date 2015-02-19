require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection('postgres://localhost/class05_homework')

class Dog < ActiveRecord::Base

  def is_puppy?
    return age < 2
  end

  def age_in_dog_years
    return age * 7
  end

  def age_one_year
    self.age += 1
    save
  end
end


class Potato
  def taste

  end
end

tuber = Potato.new
thing = Potato.new

binding.pry