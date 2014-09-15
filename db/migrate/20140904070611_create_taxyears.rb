class CreateTaxyears < ActiveRecord::Migration
  def change
    create_table :taxyears do |t|
      t.integer :year
      t.references :client, index: true
      
      t.timestamps
    end
  end
end
