class AddColumnsToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :location, :string
    add_column :jobs, :company, :string
    add_column :jobs, :level, :string
    add_column :jobs, :skill, :string

  end
end
