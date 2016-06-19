class Compromisso < ActiveRecord::Base
  has_one :sala
  belongs_to :user
  validates :date,presence: true, :uniqueness => {:scope => [:sala_id]}
end
