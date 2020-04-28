class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  accepts_nested_attributes_for :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
 
  def artist_name
     self.artist ? self.artist.name : nil
  end

  # def genre_id=(name)
  #   self.genre_id = Genre.find_or_create_by(name: name).id
  # end
 
  def genre_id
     self.genre ? self.genre.id : nil
  end

  # def notes_attributes=(attributes)
  #   attributes.each do |attribute|
  #     note = Note.create(content: attribute)
  #     self.notes << note
  #   end
  # end

end
