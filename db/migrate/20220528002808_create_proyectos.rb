class CreateProyectos < ActiveRecord::Migration[7.0]
  def change
    create_table :proyectos do |t|
      t.string :name
      t.text :desc
      t.string :fecha_i
      t.string :fecha_t
      t.string :estado

      t.timestamps
    end
  end
end
