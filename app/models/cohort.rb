class Cohort < ApplicationRecord
    has_one :instructor 
    belongs_to :course

    has_many :studentcohorts
    has_many :students, :through => :studentcohorts
end
