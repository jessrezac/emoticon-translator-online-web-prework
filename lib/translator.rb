# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)

  # this needs to return { get_emoticon => japanese, get_meaning => english }
  translation_key = Hash.new

  emoticons.each do |emoticon_name, interpretations|
    translation_key[get_meaning[emoticon_name]] = interpretations[0]
    translation_key[get_emoticon[emoticon_name]] = interpretaions[1]
    binding.pry
  end

  translation_key
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
