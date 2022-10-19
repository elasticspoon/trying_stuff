class AddTypeColumnToVariants < ActiveRecord::Migration[7.0]
  def change
    add_column :variants, :type, :string
  end
end
