class Cohort < ApplicationRecord
    has_one :instructor, dependent: :destroy
    belongs_to :course, dependent: :destroy

    has_many :studentcohorts, dependent: :destroy
    has_many :students, :through => :studentcohorts
end
