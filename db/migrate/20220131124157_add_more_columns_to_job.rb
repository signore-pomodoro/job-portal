class AddMoreColumnsToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :contact, :string
    add_column :jobs, :currency, :string
  end
end
