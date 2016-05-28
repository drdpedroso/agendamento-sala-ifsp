class ChangingDateToDatetime < ActiveRecord::Migration
  def change
    change_column :compromissos, :date,  :datetime
  end
end
