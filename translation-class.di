import "error-handler.di";

class TranslationClass : ErrorHandlerClass
{
public:

    //This function translates a word
    //lang[0] translateLang lang[1] translatedLang   word: translatedWord 
    int TranslateWord(string[] lang,string word,char[] translatedWord)
    {
        char[] html;    

        //Get a dictionary page
        ErrorHandler(GetDictionaryHtml(lang,word,html)); 

        //Code to process <li> (word meaning part of dictionary)
        return 0;
    }

private:
    
    //This function gets a html file of a dictionary site
    //lang[0] translateLang lang[1] translatedLang   word: translatedWord html:HTML of Dictionary Site
    //returned value 1: translateLang is incorrect 2 TranslatedLanguage is incorrect
    int GetDictionaryHtml(string[] lang,string word,char[] html)
    {
        switch(lang[0])
        {
            import std.net.curl;
            import std.array;

            //English -> Translated Lang's Dictionary HTML
            case "English":
            case "english":
            case "en":
                {
                    //Translated Lang
                    switch(lang[1])
                    {
                        case "Spanish":
                        case "spanish":
                        case "es":
                            //Spanish language
                            html=get("https://en.bab.la/dictionary/english-spanish/"~word);
                            break;

                        case "Esperanto":
                        case "esperanto":
                            
                            //Esperanto language
                            html=get("https://en.bab.la/dictionary/english-esperanto/"~word);
                            break;

                        case "Russian":
                        case "russian":
                        case "ru":

                            //Russian language
                            html=get("https://en.bab.la/dictionary/english-russian/"~word);
                            break;

                        default:
                            return 2;
                            break;
                    }
                        
                    return 0;
                    break;
                }

            //Japanese -> Translated Lang's Dictionary HTML
            case "Japanese":
            case "japanese":
            case "jp":
                {
                    return 0;
                }

            default:
                return 1;
        }        
    }
}
