require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

at1=Author.new("Author1")
mag1=Magazine.new("Mag1","Cat1")
mag2=Magazine.new("Mag2","Cat1")
mag3=Magazine.new("Mag3","Cat2")
art1=Article.new(at1,mag1,"Title1")
art2=Article.new(at1,mag1,"Title2")
at1.add_article(mag1,"Title3")
at1.add_article(mag1,"Title6")
at1.add_article(mag1,"Title7")
at1.add_article(mag2,"Title4")
at1.add_article(mag3,"Title5")



### DO NOT REMOVE THIS
binding.pry

0