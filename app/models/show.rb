class Show < ActiveRecord::Base
  
  def Show::highest_rating 
    Show.maximum(:rating)
  end
  
  def Show::most_popular_show 
    Show.find_by rating: Show::highest_rating
  end

  def Show::lowest_rating 
    Show.minimum(:rating)
  end
  
  def Show::least_popular_show 
    Show.find_by rating: Show::lowest_rating
  end
  
  def Show::ratings_sum
    Show.count(:rating)
  end
  
  def Show::popular_show 
    Show.where("rating > '5'")
  end
end