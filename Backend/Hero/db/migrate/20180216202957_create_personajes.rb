class CreatePersonajes < ActiveRecord::Migration[5.1]
  def change
    create_table :personajes do |t|
      t.string :name
      t.text :description
      t.text :photo

      t.timestamps
    end
  end
end
