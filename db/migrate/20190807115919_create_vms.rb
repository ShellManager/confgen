class CreateVms < ActiveRecord::Migration[5.2]
  def change
    create_table :vms do |t|
      t.string :name
      t.string :mac
      t.string :os
      t.string :version
      t.string :ip
      t.string :status
      t.timestamps
    end
  end
end
