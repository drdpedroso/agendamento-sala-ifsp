class AddRangeDateToCompromisso < ActiveRecord::Migration
  def change
    add_column :compromissos, :start_date , :datetime
    add_column :compromissos, :end_date , :datetime
  end
end
