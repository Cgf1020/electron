// All of the Node.js APIs are available in the preload process.
// It has the same sandbox as a Chrome extension.


//test 1：向 渲染 进程 暴露 他可以调用的函数（功能）

const { contextBridge, ipcRenderer } = require('electron')

contextBridge.exposeInMainWorld('versions', {
  node: () => process.versions.node,
  chrome: () => process.versions.chrome,
  electron: () => process.versions.electron,
  // 能暴露的不仅仅是函数，我们还可以暴露变量
})




//渲染进程 给主进程 发消息 ==》 给渲染暴露 简单的 windwos API， 由 render.js 工作者来调用，也就是 前端   这个函数我可以理解为 把 setTitle 挂到 window对象下边，让渲染进程能够访问到
//那我是不是 也可以 定义一个对象  talk_window，将自定义函数挂载在 talk_window下面


//test 2：渲染器 调用 主进程 提供的 函数，单向的，不返回结果
contextBridge.exposeInMainWorld('electronAPI', {
  setTitle: (title) => ipcRenderer.send('set-title', title)
})





