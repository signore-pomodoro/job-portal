class AddBillingLocationToEmployercity < ActiveRecord::Migration[6.1]
  def change
    add_column :employers, :country, :string
    add_column :employers, :city, :string
  end
end
