// import "word-list-generator.di";


import "translation-class.di";

int main(string[] args)
{
    TranslationClass t;
    char[] tw;
    t.TranslateWord(["English","Japanese"],"test",tw);
    return 0;
}
