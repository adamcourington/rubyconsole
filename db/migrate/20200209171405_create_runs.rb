class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.string :run_number
      t.string :date
      t.string :station
      t.string :time_of_call
      t.string :onscene
      t.string :inservice
      t.string :number
      t.string :street1
      t.string :street2
      t.string :category1
      t.string :category2
      t.string :info
      t.string :shift
      t.string :name
      t.string :a2591
      t.string :a2592
      t.string :a2551
      t.string :a2552
      t.string :a2553
      t.string :a2571
      t.string :a2572
      t.string :a2501
      t.string :a2502
      t.string :a2503
      t.string :a2504

      t.timestamps
    end
  end
end
