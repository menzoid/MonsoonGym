class Session < ApplicationRecord
  belongs_to :member
  belongs_to :training
end
