class Doctor < ActiveRecord::Base
  belongs_to :user
  has_one :specialization
end
