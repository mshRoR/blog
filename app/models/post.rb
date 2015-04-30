class Post < ActiveRecord::Base
	#attr_accessible :title, :content
	attr_protected :id

  validates :title, :content, :presence => true
  validates :title, :length => {:minimum => 2}
  validates :title, :uniqueness => true
end
