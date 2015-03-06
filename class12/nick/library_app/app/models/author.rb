class Author < ActiveRecord::Base
	validates :first_name, presence: true
    validates :last_name, presence: true
    validates :bio, presence: true

    has_many :books, dependent: :destroy

end
