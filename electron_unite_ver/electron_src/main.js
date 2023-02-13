// Modules to control application life and create native browser window
const {app, BrowserWindow} = require('electron')
const path = require('path')

const ipc = require('./ipc_main.js')     //渲染进程 与  主进程的 交互  （IPC）



/*============================================================================================================================*/
//获取产品的性质： 开发环境 or 线上产品
const isDevelopment = process.env.NODE_ENV !== 'production'

function createWindow () {

  //step1:-------------- Create the browser window.    设置窗口的配置
  const mainWindow = new BrowserWindow({
    //show: false,
    x: 0,
    y: 0,
    width: 800,
    height: 600,
    //backgroundColor: '#02243B', //窗口背景
    //frame: false,   //创建的窗口是否带边框
    icon:path.join(__dirname,'../res/icon_win.ico'),    // 注意，这里的path是一个node模块哦，需要npm安装并且引入使用。最直接的作用就是拼接字符串
    webPreferences: {
      //contextIsolation: false,  //上下文隔离
      preload: path.join(__dirname, 'preload.js')
    }
  })
  
    // and load the index.html of the app.
  mainWindow.loadFile('./electron_src/index.html')

    // load web url
    // let load_retry = 0;
    // mainWindow.loadURL('https://source.chromium.org/chromium/chromium/src').then(e=>{

  // Open the DevTools.
    if(isDevelopment)
    {
      mainWindow.webContents.openDevTools()
    } 
}

// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.whenReady().then(() => {
  createWindow()

  app.on('activate', function () {
    // On macOS it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (BrowserWindow.getAllWindows().length === 0) createWindow()
  })
})

// Quit when all windows are closed, except on macOS. There, it's common
// for applications and their menu bar to stay active until the user quits
// explicitly with Cmd + Q.
app.on('window-all-closed', function () {
  if (process.platform !== 'darwin') app.quit()
})

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and require them here.


