require "pry"


def reformat_languages(languages)
  oo_array = []
  func_array = []
  new_hash = {}
  new_hash_1 = {}
  new_hash_2 = {}
  languages.each do |lang_style, lang|
    lang.each do |lang, lang_type|
      new_hash_1[lang] = lang_type
    end 
  end
  languages.each do |lang_style, lang|
    if lang_style == :oo
      oo_array = lang.keys
      elsif lang_style == :functional
      func_array = lang.keys
    end 
  end 
  new_hash_1.each do |lang, lang_char|
    if (oo_array.include? lang) && (func_array.include? lang)
      new_hash_2[lang] = {style: [:oo, :functional]}
      elsif oo_array.include? lang
      new_hash_2[lang] = {style: [:oo]}
      elsif func_array.include? lang
      new_hash_2[lang] = {style: [:functional]}
    end 
  end 
  new_hash_1.each do |lang, lang_char|
    a = lang_char.to_a
    b = new_hash_2[lang].to_a
    a << b
    a.flatten!(2)
    h = Hash[*a]
    new_hash[lang] = h
  end 
  new_hash
end 