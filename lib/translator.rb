# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)

  # this needs to return { get_emoticon => japanese, get_meaning => english }
  get_emoticon = Hash.new
  get_meaning = Hash.new

  emoticons.each do |emoticon_name, interpretations|
    binding.pry
    get_meaning[emoticon_name] = interpretations[0]
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
