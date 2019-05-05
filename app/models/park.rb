class Park < ActiveRecord::Base
  has_and_belongs_to_many :rangers
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }

end
