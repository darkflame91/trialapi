class CaseDoctor < ActiveRecord::Base
  belongs_to :case
  belongs_to :doctor
end
