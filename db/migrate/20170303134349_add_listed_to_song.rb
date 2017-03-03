class AddListedToSong < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :listed, :integer, default:0
  end
end
