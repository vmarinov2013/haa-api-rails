class CreateScholarScholarships < ActiveRecord::Migration[5.1]
  def change
    create_table :scholar_scholarships do |t|
      t.string :name
      t.string :year
      t.decimal :total_award, precision: 10, scale: 2
      t.integer :number_awarded
      t.timestamps
    end
  end
end
