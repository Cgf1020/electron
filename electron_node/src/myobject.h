#ifndef MYOBJECT_H
#define MYOBJECT_H



#include <napi.h>

//class NodeRtcEngine : public Napi::ObjectWrap<NodeRtcEngine>

class MyObject : public Napi::ObjectWrap<MyObject>
{
public:
    static void Init(Napi::Env env, Napi::Object exports);
    static Napi::Object NewInstance(Napi::Env env, Napi::Value arg);

    MyObject(const Napi::CallbackInfo& info);

public:
    int getVal()
    {
        return val_;
    }

private:
    int val_;

};

#endif