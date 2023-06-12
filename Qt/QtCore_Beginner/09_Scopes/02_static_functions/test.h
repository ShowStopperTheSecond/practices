#ifndef TEST_H
#define TEST_H

#include <QObject>

class test : public QObject
{
    Q_OBJECT
public:
    explicit test(QObject *parent = nullptr);
    void doStuff();
    static void doOtherStuff();
signals:

};

#endif // TEST_H
