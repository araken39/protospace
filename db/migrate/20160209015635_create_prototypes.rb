class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|

      t.text :title
			t.text :catch_copy
		  t.text :concept
			t.integer :user_id
      t.timestamps
    end
  end
end
