class Listing < ActiveRecord::Base
    belongs_to :host, :class_name => "User"
    belongs_to :neighborhood
    # belongs_to :city, through: :neighborhood
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, :class_name => "User", through: :reservations
end