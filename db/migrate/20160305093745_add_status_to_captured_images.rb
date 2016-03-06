class AddStatusToCapturedImages < ActiveRecord::Migration
  def change
    add_column :captured_images, :status, :integer
  end
end
