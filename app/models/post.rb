class Post < ActiveRecord::Base
	has_many :comments
	validates	:content, :presence => { :message => "Please write something." }

	def self.search(search, page)
  	paginate :per_page => 5, :page => page,
    	       :conditions => ['id like ?', "%#{search}%"],
      	     :order => 'id'
	end

end
