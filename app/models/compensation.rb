class Compensation < ApplicationRecord
  acts_as_paranoid

  belongs_to :request_leave
end
