class State < ApplicationRecord
	has_many :bugs
	
	accepts_nested_attributes_for :bugs
end
