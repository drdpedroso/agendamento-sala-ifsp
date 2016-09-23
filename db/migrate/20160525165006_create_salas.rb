class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :nome
      t.string :tipo

      t.timestamps
    end
  end
end
