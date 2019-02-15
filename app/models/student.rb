class Student < ApplicationRecord
    has_many :studentcohorts
    has_many :cohorts, :through => :studentcohorts, dependent: :destroy
    validates :first_name, :last_name, :age, :education, presence: true
    validates :age, numericality: {less_than: 150}
    validates :age, numericality: {greater_than: 0}
end
