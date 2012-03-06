module ListingHelper
	def article_count(count)
		if count > 1
			return count.to_s + " articles."
		else
			return count.to_s + " article."
		end
	end
end
