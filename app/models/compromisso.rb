class Compromisso < ActiveRecord::Base
  has_one :sala
  belongs_to :user

  validates_presence_of :start_date, :end_date


end
