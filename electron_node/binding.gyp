{
  "targets": [
    {
      'target_name': "addon",  
      'product_name': "addon", 
      'sources': [ 		#包含的源码目录
        "./src/addon.cc",
        './src/myobject.cc'
      ],
      'include_dirs':[
        "<!@(node -p \"require('node-addon-api').include\")",
        './src'
      ],
      'conditions':[     #区分平台的一些配置
        [
          'OS=="win"',
          {
            'msvs_settings': {
		          'VCCLCompilerTool': { 'ExceptionHandling': 1 },
	  	      }
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