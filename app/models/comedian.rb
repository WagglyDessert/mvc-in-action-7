class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name
  validates_presence_of :age

  def self.average_age
    #1. average calculation
    #2. rounding
    #3. interpolating into a string - presentation logic
    "#{average(:age).round(2)} Years"
  end

  def average_special_runtime
    #think- does this belong in comedian model or special model?
    #prob more succinct to keep with comedian controller than move to special
    specials.average(:runtime).round(2)
  end

  def specials_count
    specials.count
  end

  def longest_special
    specials.order(runtime: :desc).first
  end

  def can_average?
    specials_count > 2 && longest_special > 20
  end
end
