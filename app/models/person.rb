class Person < ApplicationRecord
  has_many :bookings


  has_secure_password
  validates :dni, presence: { message: "El DNI es obligatorio" }
  validates :email, presence: { message: "La direccion de email es obligatoria"}, 
                    uniqueness: { "Esa direccion de email ya esta en uso" }
  validates :fecha_nacimiento, presence: { message: "La fecha de nacimiento es obligatoria" },
                               date: { before: Proc.new { Date.today } } #proc.new hace que lo que este dentro de {} se guarde y ejecute mas tarde. (para que no se haga la validacion de Date.today en el mismo instante que se levanta el servidor)
  validates :first_name, presence: { "Se debe ingresar el nombre" }
  validates :last_name, presence: { "Se debe ingresar el apellido" }
  validates :password, presence: { "Se debe ingresar la contraseña" }, on: :create,
                       length: { minimum: 6, message: "Debe tener al menos 6 caracteres" },
                       allow_blank: true


end
