require 'trip_phrase/word_type'
require 'trip_phrase/phrase_generator'

module TripPhrase

  def self.generate(salt, password)
    TripPhrase::PhraseGenerator.new(salt, password).phrase
  end

end
