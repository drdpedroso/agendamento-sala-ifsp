class RemoveDateFromCompromisso < ActiveRecord::Migration
  def change
    remove_column :compromissos, :date, :datetime
  end
end
