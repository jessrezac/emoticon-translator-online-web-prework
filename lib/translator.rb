# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  library = {"get_meaning" => {}, "get_emoticon" =>{}}

  emoticons.each do |label, translations|
    library["get_meaning"][translations[1]] = label
    library["get_emoticon"][translations[0]] = translations[1]
  end

  library
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  if library["get_emoticon"].include?(emoticon)
    library["get_emoticon"].fetch(emoticon)
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  if library["get_meaning"].include?(emoticon)
    library["get_meaning"].fetch(emoticon)
  else
    "Sorry, that emoticon was not found"
  end
end
