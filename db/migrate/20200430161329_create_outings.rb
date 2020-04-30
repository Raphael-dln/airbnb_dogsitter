class CreateOutings < ActiveRecord::Migration[5.2]
  def change
    create_table :outings do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
