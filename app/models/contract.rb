class Contract < ApplicationRecord
  belongs_to :member
  belongs_to :package
end
