class AddStatusToCapturedImages < ActiveRecord::Migration
  def change
    add_column :captured_images, :status, :string
  end
end
