class AddAttrIsHiddenToPost < ActiveRecord::Migration[6.0]
  def change
    change_table(:posts) do |t|
      t.boolean :is_hidden, default: false
    end
  end
end
