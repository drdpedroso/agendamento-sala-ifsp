class AddingSalaToAgendamento < ActiveRecord::Migration
  def change
    add_column :compromissos, :sala_id , :integer
  end
end
