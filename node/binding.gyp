{
  "targets": [
    {
      'target_name': "addon",  
      'product_name': "addon", 
      'type': 'node', #executable : 可执行程序，在windows中就是exe文件,   static_library ： 静态库，在linux中就是libxxx.a的文件, shared_library: 动态库，即*.so文件,
      'include_dirs':[    #指定头文件路径关键字
        "<!@(node -p \"require('node-addon-api').include\")",
        './node_src'
      ],
      'sources': [ 		#包含的源码目录 设置生成target需要编译的源文件。
        "./node_src/addon.cc",
        './node_src/myobject.cc'
      ],
      'defines': [ 'WEBRTC_WIN', 'TK_WIN', 'TK_SDK_LIB', 'RTC_ENABLE_WIN_WGC', 'WIN32'],  #相当于全局的 宏定义， 区分平台好一点
      'library_dirs': [ #链接库的路径    ,  区分平台好一点
        
      ],
      'libraries': [  #链接库的名称      区分平台好一点
    
      ],
      'conditions':[     #区分平台的一些配置  
        [
          'OS=="win"',
          {
            'msvs_settings': { 'VCCLCompilerTool': { 'ExceptionHandling': 1 }, } # 编译器配置 windows下选择 clang作为编译器
            'copies': [{
                    'destination': '<(PRODUCT_DIR)',
                    'files': [
                        './node_src/library/win/dll/**'
                    ]
                }],

          },
        ],
        [
          'OS=="mac"',
          {
    
          }
        ]  
      ] #conditions
    }
  ]
}