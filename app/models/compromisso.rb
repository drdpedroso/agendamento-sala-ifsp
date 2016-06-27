class Compromisso < ActiveRecord::Base
  has_one :sala
  belongs_to :user



end
