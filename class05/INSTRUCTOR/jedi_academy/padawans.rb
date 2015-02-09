require 'active_record'
require 'pry'

I18n.enforce_available_locales = false
ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

class Padawan < ActiveRecord::Base
  validates :name, :presence => true

  def is_darkside?
    return lightsaber == 'red'
  end

  def add_training_mission
    self.training_missions += 1
    self.apprenticeship_complete = (training_missions >= 10)
    save
  end
end


binding.pry