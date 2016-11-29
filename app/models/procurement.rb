class Procurement < ActiveRecord::Base
  validates :cliente, presence: true, length: { minimum: 3 }
  validates :observacoes_complementares , length: { maximum: 200 }
  
  def self.search(search)
    where("cliente LIKE ? or cast(numero_do_processo as text) LIKE ?", "%#{search}%", "%#{search}%")
  end
end