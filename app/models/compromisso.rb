class Compromisso < ActiveRecord::Base
  has_one :sala
  validates :date,presence: true, :uniqueness => {:scope => [:sala_id]}
end
