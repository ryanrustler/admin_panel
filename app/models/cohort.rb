class Cohort < ApplicationRecord
    has_one :instructor 
    belongs_to :course, required: false

    has_many :studentcohorts
    has_many :students, :through => :studentcohorts
end
