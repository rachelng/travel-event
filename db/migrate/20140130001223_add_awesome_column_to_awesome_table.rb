class AddAwesomeColumnToAwesomeTable < ActiveRecord::Migration
  def change
  	add_column :events, :track_id, :string
  end
end
