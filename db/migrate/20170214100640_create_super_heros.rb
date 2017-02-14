class CreateSuperHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :power
      t.string :descriptor

      t.timestamps
    end
  end
end
