class CreateConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :consoles do |t|
      t.string :nombre
      t.string :lanzamiento
      t.string :precio
      t.string :dimenciones
      t.string :marca

      t.timestamps
    end
  end
end
