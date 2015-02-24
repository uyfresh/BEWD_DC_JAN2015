class Author < ActiveRecord::Base
  has_many :books

  def full_name
    return "#{first_name} #{last_name}"
  end
end