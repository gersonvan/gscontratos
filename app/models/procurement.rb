class Procurement < ActiveRecord::Base
  validates :cliente, presence: true, length: { minimum: 1 }
  
  def self.search(search)
    where("cliente LIKE ? or cast(numero_do_processo as text) LIKE ?", "%#{search}%", "%#{search}%")
  end
end