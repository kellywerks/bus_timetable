class CreateTables < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :lines do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :stops do |t|
      t.belongs_to :station
      t.belongs_to :line

      t.timestamps
    end
  end
end
