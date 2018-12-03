import error;

class TranslationClass : ErrorHandlerClass
{
public:
    this(string[] lang)
    {
        _lang=lang;
    }

    //This function translates a word
    void TranslateWord()
    {                   
        ErrorHandler(GetTranslation());
    }

    //setter
    void word(string word)
    {
        _word=word;
    }

    //getter
    string word()
    {
        return _word;
    }

private:

    //This function gets a html file of a dictionary site
    int GetDictionaryHtml()
    {
        switch(_lang[0])
        {
            import std.net.curl;
            import std.array;

            //English -> Translated Lang's Dictionary HTML
            case "English":
            case "english":
            case "en":
                {
                    //Translated Lang
                    switch(_lang[1])
                    {
                        case "Spanish":
                        case "spanish":
                        case "es":
                            //Spanish language
                            _html=get("https://en.bab.la/dictionary/english-spanish/"~_word);
                            break;

                        case "Esperanto":
                        case "esperanto":
                            
                            //Esperanto language
                            _html=get("https://en.bab.la/dictionary/english-esperanto/"~_word);
                            break;

                        case "Russian":
                        case "russian":
                        case "ru":

                            //Russian language
                            _html=get("https://en.bab.la/dictionary/english-russian/"~_word);
                            break;

                        default:
                            return 2;
                            break;
                    }
                        
                    return 0;
                    break;
                }

            case "Japanese":
            //Japanese -> Translated Lang's Dictionary HTML
            case "japanese":
            case "jp":
                {
                    return 0;
                }

            default:
                return 1;
        }        
    }
    
    //From the html get the translation and rewite _word with it
    int GetTranslation()
    {
        switch(_lang[0])
        {
            //Not from japanese
            default:
                
                //Get a dictionary page
                ErrorHandler(GetDictionaryHtml()); 

                //Get <li></li> part

                //Get translation

                break;

            case "Japanese":
            case "japanese":
            case "jp":
                
                break;
            
        }
        return 0;
    }
private:
    //0.Translate language 2.TranslatedLanguage
    string[] _lang;
    //translate / translated word
    string _word;

    //dictionary html
    char[] _html;
}
