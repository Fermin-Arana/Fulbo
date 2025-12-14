class User < Person
  has_may :comments, foreign_key: :user_id, dependent: :destroy

  validates :dni, presence: { message: "El DNI es obligatorio" }
  validates :email, presence: { message: "La direccion de email es obligatoria"}, 
                    uniqueness: { "Esa direccion de email ya esta en uso" }
  validates :fecha_nacimiento, presence: { message: "La fecha de nacimiento es obligatoria" },
                               date: { before: Proc.new { Date.today } } #proc.new hace que lo que este dentro de {} se guarde y ejecute mas tarde. (para que no se haga la validacion de Date.today en el mismo instante que se levanta el servidor)
  validates :first_name, presence: {}
end
