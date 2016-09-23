class AddDateToCompromisso < ActiveRecord::Migration
  def change
      add_column :compromissos, :date , :date
  end
end
