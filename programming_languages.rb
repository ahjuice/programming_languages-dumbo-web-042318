def reformat_languages(languages)
  new_hash = {}

  languages.each { | style, language_list |
    language_list.each { | language, attributes |
      if new_hash.key?(language)

      else
        new_hash[language] = {}
      end
      attributes.each { | attribute, value |
        new_hash[language][attribute] = value
       }
    }
  }

  new_hash.each { | language, attributes |
    new_hash[language][:style] = []
  }

  languages.each { | style, language_list |
    language_list.each { | language, attributes |
      new_hash[language][:style] << style
    }
  }
  
  new_hash
end
