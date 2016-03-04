class CreateCapturedImages < ActiveRecord::Migration
  def change
    create_table :captured_images do |t|
      t.string   :thumbnail
      t.string   :status
      t.integer   :prototype_id
      t.timestamps
    end
  end
end
