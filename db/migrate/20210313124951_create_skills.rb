class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :title
      t.decimal :persentage_utilized

      t.timestamps
    end
  end
end
