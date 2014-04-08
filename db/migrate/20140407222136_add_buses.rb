class AddBuses < ActiveRecord::Migration
  def change
    remove_column :stops, :line_id
    add_column :stops, :bus_id, :integer

    create_table :buses do |t|
      t.column :name, :string
      t.belongs_to :line
      t.timestamps
    end
  end
end
