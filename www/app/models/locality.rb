class Locality < ActiveRecord::Base
  belongs_to :delegation
  has_many :nurseries
end
