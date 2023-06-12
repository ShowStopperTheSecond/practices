#include <QCoreApplication>

int main(int argc, char *argv[])
{
    enum colors{
        red,
        green,
        blue,
        purple,
        brown,
    };

    struct person{
        QString name;
        QString last_name;
        int age;
        colors eyecolor;
    };

    person javid;
    javid.name = "javid";
    javid.last_name = "norouzi";
    javid.eyecolor = colors::brown;


    qInfo()<< "this person first name is "<< javid.name;
//    QCoreApplication a(argc, argv);

//    return a.exec();
    return 0;
}
