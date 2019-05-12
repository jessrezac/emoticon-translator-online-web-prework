# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)

  # this needs to return { get_emoticon => japanese, get_meaning => english }
  translation_key = Hash.new



  translation_key
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
