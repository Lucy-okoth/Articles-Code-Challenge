# Please copy/paste all three classes into this file to submit your solution!
require_relative './module'

class Author
  attr_reader :name
  extend Finder
  
  @@all=[]
  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end
  def articles
    # filter from  articles, articles 
    Article.all.filter{|article|article.author==@name}
  end
  def magazines
    
    articles.map{|article|article.magazine}.uniq
  end
  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end
  
  def topic_areas
    magazines.map{|magazine|magazine.category}.uniq
  end
end



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


require_relative './module'
class Magazine
  attr_accessor :name, :category
  extend Finder
  @@all = []
  
  def initialize(name, category)
    @name = name
    @category = category
    # add initialized object to class variable "all"
    @@all << self
  end

  def self.all
    @@all
  end
  def magazine_articles
    Article.all.filter{|article|article.magazine.name==@name}
  end
  def magazine_authors
    magazine_articles.map{|article|Author.find_by_name(article.author)}
  end
  
  def contributors
    
    magazine_authors.uniq
  end
  
 

  def article_titles
    magazine_articles.map{|article|article.title}
  end

  def contributing_authors
    main_authors=[]
    magazine_authors.tally.each{|key,value|value>2 && (main_authors<<key)}
    main_authors
  end
end
