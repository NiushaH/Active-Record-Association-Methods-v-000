class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    if self.name.include?("Drake")
    else
      drake = Artist.new(name: "Drake")
    end

    hotline_bling = Song.new(name: "Hotline Bling")
    hotline_bling.artist = drake
    # R&B = Genre.new(name: "R&B")
    end
  end
end