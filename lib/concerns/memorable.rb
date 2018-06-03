module Memorable
  module ClassMethods
    def count
      self.all.count
    end
  end
end
