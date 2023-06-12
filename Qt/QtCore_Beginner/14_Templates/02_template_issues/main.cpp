#include <QCoreApplication>
template<class F, class T>
F add(F valueF, T valueT){
    return valueF + valueT;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo()<< add<int, float>(23,39.32);
    qInfo()<< add<int, bool>(23,39.32);
    qInfo()<< add<float, int>(23,39.32);

//    qInfo()<< add(23,"What do you mena");
    qInfo()<< add(23,39.32);
    qInfo()<< add(false,true);
    // The results can be unpredictable;
    return a.exec();
}
