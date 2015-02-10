require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/dogs")

class Dog < ActiveRecord::Base
  validates :name, :presence => true
  validates :age, :numericality => true

  validate :name_cuteness

  def name_cuteness
    if is_puppy? && name[-1] != 'y' && name[-2..-1] != 'ie'
      errors.add(:name_cuteness, "is not sufficiently cute.")
    end
  end

  def age_in_dog_years
    return age * 7
  end

  def is_puppy?
    return age < 2
  end

  def age!
    self.age += 1
    save
  end
end

binding.pry