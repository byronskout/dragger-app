class AddImgUrlQuoteToQueensTable < ActiveRecord::Migration[5.2]
  def change
    add_column :queens, :image_url, :string
    add_column :queens, :quote, :string
  end
end
