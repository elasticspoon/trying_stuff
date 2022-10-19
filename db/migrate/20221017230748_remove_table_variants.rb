class RemoveTableVariants < ActiveRecord::Migration[7.0]
  def change
    drop_table :variants
  end
end
