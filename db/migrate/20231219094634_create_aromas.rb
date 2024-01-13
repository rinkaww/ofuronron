class CreateAromas < ActiveRecord::Migration[6.1]
  def change
    create_table :aromas do |t|
      t.string :question

      t.timestamps
    end
  end
end
