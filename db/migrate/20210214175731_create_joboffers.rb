class CreateJoboffers < ActiveRecord::Migration[6.1]
  def change
    create_table :joboffers do |t|
      t.string :title
      t.string :description
      t.integer :averagesalary
      t.string :requirements
      t.date :datetoapply
      t.integer :jopvacancies

      t.timestamps
    end
  end
end
