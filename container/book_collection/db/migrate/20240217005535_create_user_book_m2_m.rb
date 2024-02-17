class CreateUserBookM2M < ActiveRecord::Migration[7.0]
  def change
    create_table :user_book_m2_ms do |t|
      t.string :user
      t.string :book

      t.timestamps
    end
  end
end
