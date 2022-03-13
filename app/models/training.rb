class Training < ApplicationRecord
  belongs_to :trainer
  belongs_to :discipline
  has_many :sessions
end
