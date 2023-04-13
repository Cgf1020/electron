// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.


/*
预加载对象：有两种方式

第一种：在创建窗口的时候禁止上下文隔离contextIsolation: false，
    example:
    window.my_window.myminimizeWindow = myrender.minimizeWindow     这样就能直接使用

第二种： 官方指定的contextBridge API, 需要导入contextBridge模块
    需要使用官方的函数exposeInMainWorld

以下代码演示第二种封装
*/

/*=========================================头文件==============================================*/
const { contextBridge } = require('electron')       

const myrender = require('./ipc/ipc_render.js')            //预加载 ipc_render模块





/*=========================================code实例==============================================*/



contextBridge.exposeInMainWorld('electronAPI', {

    minimizeWindow:(arg) => myrender.minimizeWindow(arg),

    setTitle: (title) => myrender.setTitle(title),

})   





// //test 1：向 渲染 进程 暴露 他可以调用的函数（功能）

// const { contextBridge, ipcRenderer } = require('electron')

// contextBridge.exposeInMainWorld('versions', {
//   node: () => process.versions.node,
//   chrome: () => process.versions.chrome,
//   electron: () => process.versions.electron,
//   // 能暴露的不仅仅是函数，我们还可以暴露变量
// })





