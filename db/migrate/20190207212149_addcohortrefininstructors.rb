class Addcohortrefininstructors < ActiveRecord::Migration[5.2]
  def change
    add_reference :instructors, :cohort, foreign_key: true
  end
end
