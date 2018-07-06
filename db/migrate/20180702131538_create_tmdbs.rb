class CreateTmdbs < ActiveRecord::Migration[5.1]
  def change
    create_table :tmdbs do |t|

      t.timestamps
    end
  end
end
