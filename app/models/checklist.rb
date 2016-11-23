class Checklist < ApplicationRecord
  # Direct associations

  has_many   :items,
             :dependent => :destroy

  belongs_to :trip

  # Indirect associations

  # Validations

end
