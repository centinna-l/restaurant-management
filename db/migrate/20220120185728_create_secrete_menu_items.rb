class CreateSecreteMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :secrete_menu_items do |t|
      t.string :menu_name
      t.string :restaurant_name
      t.string :menu_description

      t.timestamps
    end
  end
end