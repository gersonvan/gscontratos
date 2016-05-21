class Procurement < ActiveRecord::Base
  validates :cliente, presence: true, length: { minimum: 1 }                     
end