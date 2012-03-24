require 'digest/md5'

module TripPhrase

  class PhraseGenerator
    attr_reader :salt, :password

    TEMPLATES = [
      %w(verb article adj noun),
      %w(article adj adj noun),
      %w(article adv adj noun),
      %w(adv verb article noun)
    ]

    def initialize(salt, password)
      @salt     = salt
      @password = password
    end

    def next_key
      @key ||= Digest::MD5.hexdigest(salt + password)
      @key = @key[-1] + @key[0..-2]
      @key.hex
    end

    def template
      TEMPLATES[next_key % 4]
    end

    def phrase
      template.map { |type|
        send(type)[next_key]
      }.join(' ')
    end

    [:adj, :adv, :article, :verb, :noun].each do |type|
      define_method(type) do
        instance_variable_set("@#{type}", WordType.new(type))
      end
    end
  end

end
