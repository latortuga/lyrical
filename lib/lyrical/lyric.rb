module Lyrical
  class Lyric
    attr_accessor :title, :artist, :album, :content
    def initialize(opts={})
      @title = opts[:title]
      @artist = opts[:artist]
      @album = opts[:album]
      @content = opts[:content]
    end

    def to_s
      @content
    end
  end
end
