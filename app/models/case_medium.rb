class CaseMedium < ActiveRecord::Base
  belongs_to :case
  belongs_to :mediatype
end
