class RemoveStatusFromCapturedImages < ActiveRecord::Migration
  def change
    remove_column :captured_images, :status, :string
  end
end
