class Procurement < ActiveRecord::Base
  validates :cliente, presence: true, length: { minimum: 1 }
  
  def self.search(search)
    where("cliente LIKE ?", "%#{search}%") 
  end
end