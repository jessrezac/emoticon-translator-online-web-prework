# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  library = {"get_meaning" => {}, "get_emoticon" =>{}}

  emoticons.each do |label, translations|
    library["get_meaning"][translations[1]] = label
    binding.pry
  end

  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
