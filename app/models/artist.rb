class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    return self.genres.first
  end

  def song_count
    return self.songs.count
  end

  def genre_count
    return self.genres.count
  end
end
