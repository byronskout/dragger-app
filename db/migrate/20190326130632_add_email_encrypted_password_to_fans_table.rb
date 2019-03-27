class AddEmailEncryptedPasswordToFansTable < ActiveRecord::Migration[5.2]
  def change
    add_column :fans, :email, :string
    add_column :fans, :password_digest, :string
  end
end
