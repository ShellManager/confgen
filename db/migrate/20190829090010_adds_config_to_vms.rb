class AddsConfigToVms < ActiveRecord::Migration[5.2]
  def change
    add_column :vms, :config, :hash
  end
end
