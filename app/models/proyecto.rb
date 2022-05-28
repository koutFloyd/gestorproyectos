class Proyecto < ApplicationRecord
    validates :name, :desc, :estado, presence: {message: "Debe ingresar datos"}
    
end
