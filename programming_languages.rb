def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |key, style|
    style.each do |lang, value|
      new_hash[lang] = value
      new_hash[lang][:style] = [key]
    end 
  end 
  new_hash[:javascript][:style] << :oo
  new_hash 
end


# languages = {
#   :oo => {
#     :ruby => {:type => "interpreted"},
#     :javascript => {:type => "interpreted"},
#     :python => {:type => "interpreted"},
#     :java => {:type => "compiled"}
#   },
#   :functional => {
#     :clojure => {:type => "compiled"},
#     :erlang => {:type => "compiled"},
#     :scala => {:type => "compiled"},
#     :javascript => {:type => "interpreted"}
#   }
# }

# {
#   :ruby => {:type => "interpreted", :style => [:oo]},
#   :javascript => {:type => "interpreted", :style => [:oo, :functional]},
#   :python => {:type => "interpreted", :style => [:oo]},
#   :java => {:type => "compiled", :style => [:oo]},
#   :clojure => {:type => "compiled", :style => [:functional]},
#   :erlang => {:type => "compiled", :style => [:functional]},
#   :scala => {:type => "compiled",:style => [:functional]}
# }

