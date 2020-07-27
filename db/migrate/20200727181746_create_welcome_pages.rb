class CreateWelcomePages < ActiveRecord::Migration[5.1]
  def change
    create_table :welcome_pages do |t|

      t.timestamps
    end
  end
end
