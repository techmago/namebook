class CreateNamegens < ActiveRecord::Migration
  def change
    create_table :namegens do |t|
      t.string :name
      t.text :names
      t.text :prefix
      t.text :suffix
      t.text :middle
      t.float :syllab_mean
      t.float :syllab_stddev

      t.timestamps
    end
  end
end
