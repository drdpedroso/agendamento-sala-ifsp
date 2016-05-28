class AddingAgendamentoToSala < ActiveRecord::Migration
  def change
    add_column :salas, :compromisso_id , :integer

  end
end
