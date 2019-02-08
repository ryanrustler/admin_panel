class Student < ApplicationRecord
    has_many :studentcohorts
    has_many :cohorts, :through => :studentcohorts
end
