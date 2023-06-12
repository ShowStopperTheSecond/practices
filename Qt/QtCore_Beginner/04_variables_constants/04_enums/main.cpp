#include <QCoreApplication>

int main(int argc, char *argv[])
{
//    enum colors{red, blue, green};
//    You can assign values to enums
    enum colors{
        red = 343,
        blue = 36,
        green = -12
    };
//    and also we can't change an enum value after defining it
//    colors::red = 3243;

    QCoreApplication a(argc, argv);
    colors chosen_color = colors::blue;
    if (chosen_color == blue){
        qInfo() << "The chosen color is blue and it's value is" << chosen_color;
    }
    return 0;
//    return a.exec();
}

