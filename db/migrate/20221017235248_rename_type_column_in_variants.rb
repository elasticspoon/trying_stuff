class RenameTypeColumnInVariants < ActiveRecord::Migration[7.0]
  def change
    rename_column :variants, :type, :variant_type
  end
end
