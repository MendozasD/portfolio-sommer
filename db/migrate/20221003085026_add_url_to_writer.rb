class AddUrlToWriter < ActiveRecord::Migration[7.0]
  def change
    add_column :writers, :url, :string
  end
end
