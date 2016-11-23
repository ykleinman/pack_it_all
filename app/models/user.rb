class User < ApplicationRecord
  # Direct associations

  has_many   :trips,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
