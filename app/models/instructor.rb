class Instructor < ApplicationRecord
    belongs_to :cohort, required: false
end
