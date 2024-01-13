class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :houkoku
      t.datetime :datetime
      t.string :goods
      t.text :share

      t.timestamps
    end
  end
end
