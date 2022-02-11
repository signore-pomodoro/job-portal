class AddEmployerToJobs < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :employer, null: false, foreign_key: true
  end
end
