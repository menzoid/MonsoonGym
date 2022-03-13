class Member < ApplicationRecord
  has_many :sessions
  has_many :contracts
end
