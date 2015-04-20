class Kitten < ActiveRecord::Base

  belongs_to(:mama_cat)
  belongs_to(:owner)

end
