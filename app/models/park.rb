class Park < ActiveRecord::Base
  has_and_belongs_to_many :rangers
end
