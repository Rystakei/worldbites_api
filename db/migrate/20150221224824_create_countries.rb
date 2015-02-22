class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code
      t.string :region
      t.string :region_code
      t.boolean :checked
      t.string :demonym

      t.timestamps
    end
  end
end
