class CreateCapturedImages < ActiveRecord::Migration
  def change
    create_table :captured_images do |t|
      t.string   :thumbnail
      t.integer   :status
      t.integer   :prototype_id
      t.timestamps
    end
  end
end
