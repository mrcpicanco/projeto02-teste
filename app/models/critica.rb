class Critica < ApplicationRecord
  belongs_to :Filme

  default_scope { where(esta_aprovado: true ) }
  
  validates :comentario, :Filme, presence: true

  
end