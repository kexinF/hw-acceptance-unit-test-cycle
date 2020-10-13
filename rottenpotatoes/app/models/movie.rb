class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.similar_movies movie_title
    director = Movie.find_by(title: movie_title).director
    # https://stackoverflow.com/questions/15988960/testing-for-empty-or-nil-value-string
    if director.nil? or director.empty?
      return nil
    end
    return Movie.where(director: director).pluck(:title)
  end
  
end
