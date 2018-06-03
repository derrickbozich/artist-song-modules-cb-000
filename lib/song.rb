require 'pry'
# require_relative "../lib/concerns/memorable"
# require_relative './fancy_dance.rb'

class Song
  extend Memorable::ClassMethods
  # extend Findable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end



  def self.all
    @@songs
  end
end
