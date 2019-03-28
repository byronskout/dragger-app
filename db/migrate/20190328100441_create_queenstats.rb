class CreateQueenstats < ActiveRecord::Migration[5.2]
  def change
    create_table :queenstats do |t|

      t.timestamps
    end
  end
end
