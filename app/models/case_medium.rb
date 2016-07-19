class CaseMedium < ActiveRecord::Base
  belongs_to :case
  has_one :mediatype
end
