class Tdown < ActiveRecord::Base
  has_many :commitments
  has_many :users, through: :commitments
end
