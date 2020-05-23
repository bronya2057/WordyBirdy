#include "nativeobject.hpp"

NativeObject::NativeObject(QObject *parent) : QObject(parent)
{
    mText = "hello world";
}
