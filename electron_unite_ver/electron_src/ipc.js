/*

这个文件  作为主进程 与  渲染进程的  通信

*/

const {ipcMain, BrowserWindow} = require('electron')




//test1：主进程监听渲染进程的消息         （单向的，不需要给返回结果）   
ipcMain.on('set-title', (event, title) => {
    console.log(title)
    const webContents = event.sender
    const win = BrowserWindow.fromWebContents(webContents)
    win.setTitle(title)
})
  


