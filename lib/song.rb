class Song
  attr_accessor :artist, :name, :genre

  @@artists = []
  @@genres= []
  @@genre_count= {}
  @@artist_count= {}
  @@count = 0

  def initialize(name, artist, genre)
    @@count += 1

    @name = name

    @artist = artist
    # ### They do not want the arrays to be unique for some reason.
    # if !@@artists.include?(artist)
    #   @@artists << artist
    # end
    @@artists << artist

    ## These should work...
    # if @@artist_count[artist]
    #   @@artist_count[artist] += 1
    # else
    #   @@artist_count[artist] = 1
    # end

    @genre = genre
    # ### They do not want the arrays to be unique for some reason.
    # if !@@genres.include?(genre)
    #   @@genres << genre
    # end
    @@genres << genre

    ## These should work...
    # if @@genre_count[genre]
    #   @@genre_count[genre] += 1
    # else
    #   @@genre_count[genre] = 1
    # end



  end

  def Song.genres
    @@genres.uniq
  end

  def Song.genre_count
    # @@genre_count
    @@genres.each do |genre|
      if @@genre_count[genre]
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.artist_count
    # @@artist_count
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end

  def Song.count
     @@count
  end

end
