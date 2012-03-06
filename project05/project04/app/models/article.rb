class Article < ActiveRecord::Base
	validates :title, :author, :body, presence: true
	validates :title, uniqueness: true
	validates :author, :exclusion => { 
		:in => %w(Pat pat PAT PAt PaT pAT pAt paT), 
		message: "Pat not allowed!" }
end
