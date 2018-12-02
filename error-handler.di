
import std.stdio;

class ErrorHandlerClass
{
public:
    import std.process;

    void ErrorHandler(int errorCode)
    {
        switch(errorCode)
        {
            case 0:
                break;
            
            //1: translateLanguage is incorrect
            case 1:
                writeln("Translate Language is incorrect.\n");
                writeln("This error happens with following reasons\n");
                writeln("1.The language is not supported 2.The language name is incorrect(refer to the README)\n");

                execute("exit");
                break;
            
            //2: translatedLanguage is incorrect
            case 2:

                writeln("Translated Language is incorrect.\n");
                writeln("This error happens with following reasons\n");
                writeln("1.The language is not supported 2.the language Name is incorrect(refer to the README)\n");

                execute("exit");
                break;

            //3: word is incorrect
            case 3:
            
                writeln("Word is incorrect.\n");
                writeln("This error happens with following reasons\n");
                writeln("1.The word is incorrect 2.The word does not exist\n");

                execute("exit");
                break;

            default:
                writeln("unknown error happened");
                execute("exit");
                break;
        }
    }
}