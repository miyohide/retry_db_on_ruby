class CreateSampleTable < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
