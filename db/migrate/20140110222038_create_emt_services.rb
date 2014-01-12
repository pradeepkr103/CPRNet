class CreateEmtServices < ActiveRecord::Migration
  def change
    create_table :emt_services do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :imgageUrl

      t.timestamps
    end
  end
end
