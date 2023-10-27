class Special < ApplicationRecord
  belongs_to :comedian

  validates_presence_of :name
  validates_presence_of :runtime

  # def average_special_runtime
  #   Special.where("comedian_id = ?", comedian_id).average(:runtime)
  # end
end
