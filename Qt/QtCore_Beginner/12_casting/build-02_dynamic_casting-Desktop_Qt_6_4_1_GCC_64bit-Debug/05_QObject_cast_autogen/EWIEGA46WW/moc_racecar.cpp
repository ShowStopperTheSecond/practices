/****************************************************************************
** Meta object code from reading C++ file 'racecar.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.4.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../05_QObject_cast/racecar.h"
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'racecar.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.4.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
namespace {
struct qt_meta_stringdata_RaceCar_t {
    uint offsetsAndSizes[2];
    char stringdata0[8];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_RaceCar_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_RaceCar_t qt_meta_stringdata_RaceCar = {
    {
        QT_MOC_LITERAL(0, 7)   // "RaceCar"
    },
    "RaceCar"
};
#undef QT_MOC_LITERAL
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_RaceCar[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

Q_CONSTINIT const QMetaObject RaceCar::staticMetaObject = { {
    QMetaObject::SuperData::link<Car::staticMetaObject>(),
    qt_meta_stringdata_RaceCar.offsetsAndSizes,
    qt_meta_data_RaceCar,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_RaceCar_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<RaceCar, std::true_type>
    >,
    nullptr
} };

void RaceCar::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    (void)_o;
    (void)_id;
    (void)_c;
    (void)_a;
}

const QMetaObject *RaceCar::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *RaceCar::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_RaceCar.stringdata0))
        return static_cast<void*>(this);
    return Car::qt_metacast(_clname);
}

int RaceCar::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Car::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
