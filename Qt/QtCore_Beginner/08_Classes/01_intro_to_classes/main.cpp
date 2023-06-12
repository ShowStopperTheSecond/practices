#include <QCoreApplication>
#include "animal.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Animal cat("Kitty");
    Animal dog("Doggy");
    cat.speak("WTF!");
    dog.speak("wafwaf");

    return a.exec();
}
