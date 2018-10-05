require 'pry'

def reformat_languages(languages)
  reformatted = {}

  languages.each do |language_style, language_list|
    language_list.each do |language_name, language_type|
      if reformatted[language_name]
        reformatted[language_name][:type] = language_type[:type]
      else
        reformatted[language_name] = { type: language_type[:type]  }
      end

      if reformatted[language_name][:style]
        reformatted[language_name][:style] << language_style
      else
        reformatted[language_name][:style] = []
        reformatted[language_name][:style] << language_style
      end
    end
  end

  reformatted
end
