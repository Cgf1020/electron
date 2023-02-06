#include <napi.h>



Napi::String Method(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();
    return Napi::String::New(env, "cgf hello world!");
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {

  //MyObject::Init(env, exports);

  exports.Set(Napi::String::New(env, "Method"),
              Napi::Function::New(env, Method));//设置函数名和函数指针      
              
  return exports;
}

NODE_API_MODULE(addon, Init)
















