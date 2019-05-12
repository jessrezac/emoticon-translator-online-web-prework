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
  # code goes here
  library = load_library(path)
  library["get_emoticon"].each do |eng_emoticon, jpn_emoticon|
    if eng_emoticon == emoticon
      return jpn_emoticon
    end
  end
end

def get_english_meaning
  # code goes here
end
