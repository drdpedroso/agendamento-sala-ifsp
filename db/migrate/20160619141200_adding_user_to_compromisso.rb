class AddingUserToCompromisso < ActiveRecord::Migration
  def change
    add_column :compromissos, :user_id , :integer
  end
end
