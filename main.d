import translator;
import std.stdio;

int main(string[] args)
{
    TranslationClass t=new TranslationClass(["English","Esperanto"]);

    t.word="hello";
    t.TranslateWord();
    writeln(t.word);

    return 0;
}
