class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self == <Audition>
             self.hired = true 

  end
end