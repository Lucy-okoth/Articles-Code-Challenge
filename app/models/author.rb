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
