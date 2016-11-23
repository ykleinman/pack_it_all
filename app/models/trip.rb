class Trip < ApplicationRecord
  # Direct associations

  has_one    :checklist,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
