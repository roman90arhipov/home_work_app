class AddTitleAndBodyToPosts < ActiveRecord::Migration[6.0]
  def change
    change_table(:posts) do |t|
      t.string :title
      t.string :body
    end
  end
end
