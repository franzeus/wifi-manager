class CreateRouters < ActiveRecord::Migration
  def change
    create_table :routers do |t|
      t.belongs_to :building
      t.string :location
      t.string :ip
      t.string :ssid
      t.string :building_name
      t.timestamps
    end
  end
end
