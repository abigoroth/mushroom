class Shelf < ActiveRecord::Base
	validates_uniqueness_of :name, scope: :house_id
end
