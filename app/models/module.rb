module Finder
    def initialize
        self.all << self
    end
    def find_by_name(name)
        self.all.find{|obj|obj.name==name}
    end
end