class Intructortocohorts < ActiveRecord::Migration[5.2]
  def change
    add_reference :cohorts, :instructor, foreign_key: true
  end
end
