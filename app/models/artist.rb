module Play
  class Artist
    # The name of the Artist.
    attr_accessor :name

    # Create a new Artist.
    def initialize(name)
      @name = name
    end

    # Show me all the artists in our library.
    #
    # Returns an Array of Strings.
    def self.all
      artists = client.list(:artist)
      artists.sort.map do |name|
        Artist.new(name.chomp)
      end
    end

    # A simple String representation of this instance.
    #
    # Returns a String.
    def to_s
      "#<Play::Artist name='#{name}'>"
    end

    # Determine equivalence based on the name of an artist.
    #
    # Returns a Boolean.
    def ==(other)
      name == other.name
    end
  end
end