class Person < ApplicationRecord
  has_secure_password
  has_many :bookings

  validates :dni, presence: { message: "El DNI es obligatorio" }
  validates :email, presence: { message: "La direccion de email es obligatoria"}, 
                    uniqueness: { "Esa direccion de email ya esta en uso" }
  validates :fecha_nacimiento, presence: { message: "La fecha de nacimiento es obligatoria" },
                               date: { before: Proc.new { Date.today } } #proc.new hace que lo que este dentro de {} se guarde y ejecute mas tarde. (para que no se haga la validacion de Date.today en el mismo instante que se levanta el servidor)
  validates :first_name, presence: { "Se debe ingresar el nombre" }
  validates :last_name, presence: { "Se debe ingresar el apellido" }
  validates :password, presence: { "Se debe ingresar la contraseña" }, on: :create,
  validates :password, length: { minimun: 6, message: "Debe tener al menos 6 caracteres"},
                       allow_blank: true
  validates :password, format: {
                                with: VALID_PASSWORD_REGEX,
                                message: "Debe contener al menos 8 caracteres, un digito, un simbolo y una mayuscula"
                               }

  VALID_PASSWORD_REGEX = /\A
    (?=.{8,})           # Debe tener al menos 6 caracteres (mínimo)
    (?=.*\d)            # Debe contener al menos un dígito
    (?=.*[A-Z])         # Debe contener al menos una mayúscula
    (?=.*[[:^alnum:]])  # Debe contener al menos un carácter especial (símbolo)
  /x

end
