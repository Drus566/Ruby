class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    #add_columns :entries, :user_id, :integer
    create_table :entries do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
