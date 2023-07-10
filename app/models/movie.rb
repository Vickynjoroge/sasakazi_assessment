class Movie < ActiveRecord::Base
    # create
   def self.create_new_movie(title, release_date, director, lead, in_theaters)
      Movie.create(title: title, release_date: release_date, director: director, lead: lead, in_theaters: in_theaters)
    end


    # Read
    # Movie.first
    def self.first_movie
        Movie.first
    end

    # Movie.last
    def self.last_movie
        Movie.last
    end
    
    # Movie.count
    def self.movie_count
        Movie.count
    end

    # Movie.find
    def self.find_movie_with_id id
        Movie.find id
    end

    # Movie.find_by(attributes)
    def self.find_movie_with_attributes attr
        Movie.find_by attr
    end

    # Movie.where
    def self.find_movies_after_2002
        Movie.where ("release_date > 2002")
    end

    # Update
    # Update with attr(single movie)
    def update_with_attributes attr
        self.update attr
    end

    # Update (all records)
    def self.update_all_titles name
        Movie.update title:name
    end

    # Delete
    # delete a single item with the #destroy method
    def self.delete_by_id id
        movie = Movie.find id
        movie.destroy
    end

    # Movie.destroy_all
    def self.delete_all_movies
        Movie.destroy_all
    end
end