class Trip < ApplicationRecord
  # Direct associations

  has_many   :items,
             :dependent => :nullify

  belongs_to :user

  # Indirect associations

  # Validations

end
