class Article

    attr_reader :author, :magazine, :title
    @all=[]

    def initialize(author, magazine, title)
        @author = author
        @title = title
        @magazine = magazine
        @@all <<self
    end

    def self.all
        @@all
end

end