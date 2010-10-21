class Holder < ActiveRecord::Base
	validates_presence_of :name
	validates_length_of   :country, :maximum=>2
	validates_length_of   :contact_tel, :in => 7..32, :allow_blank => true, :allow_nil => true
end
