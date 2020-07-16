class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.songs.collect {|song| song.artist}.uniq.size
  end

  def all_artist_names
    self.songs.collect {|song| song.artist.name}.uniq
  end
end
