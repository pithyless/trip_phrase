module TripPhrase

  class WordType
    attr_reader :type

    def initialize(type)
      @type = type
    end

    def words
      @words ||= words_from_file
    end

    def length
      @length ||= words.length
    end

    def [](index)
      words[index % length]
    end

    protected

    def words_from_file
      words = []
      IO.foreach(file_path) do |word|
        word.strip!
        if word =~ /^[a-z]+$/ and word.length > 1
          words << word
        end
      end
      words
    end

    def file_path
      File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'data', "#{type}.txt")
    end

  end

end
