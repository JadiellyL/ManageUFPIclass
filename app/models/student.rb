class Student < ApplicationRecord
	has_many :reservas, :dependent => :destroy
end
