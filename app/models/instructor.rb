class Instructor < ApplicationRecord
    belongs_to :cohort, required: false
    validates :first_name, :last_name, :age, :salary, :education, presence: true
    validates :age, numericality: {less_than: 150}
    validates :age, numericality: {greater_than: 0}
    validates :salary, numericality: {greater_than_or_equal_to: 0}
    validates :education, inclusion: { 
        in: %w(hs college masters phd), 
        message: "%{value} is not a valid size" }
end
