class Produto < ApplicationRecord
  belongs_to :departamento

  validates :nome, presence: true, length: {minimum: 4, maximum: 30}
  validates :descricao, presence: true, length: {minimum: 5, maximum: 100}
  validates :preco, presence: true
  validates :quantidade, numericality: {only_integer: true}
end
