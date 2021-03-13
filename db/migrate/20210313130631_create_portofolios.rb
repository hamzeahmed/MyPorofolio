class CreatePortofolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portofolios do |t|
      t.string :title
      t.string :sub_title
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
