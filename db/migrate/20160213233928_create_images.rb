class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.binary :image
      t.references :users
    end
  end
end
