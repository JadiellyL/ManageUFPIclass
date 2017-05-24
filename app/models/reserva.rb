class Reserva < ApplicationRecord
  belongs_to :student
  belongs_to :sala
end
