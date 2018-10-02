require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |type, value|
        if new_hash[language]
          new_hash[language][:style] << style
        else
          new_hash[language] = {type => value, :style => [style]}
        end
      end
    end
  end
  new_hash
end
