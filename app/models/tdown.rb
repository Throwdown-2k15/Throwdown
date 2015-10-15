class Tdown < ActiveRecord::Base
  belongs_to :user
  has_many :commitments
  has_many :users, through: :commitments
end
