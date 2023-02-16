/*

这个文件  作为主进程 与  渲染进程的  通信

渲染进程 接受 和 发送 主进程的消息
*/

const {ipcRenderer} = require('electron')



class MyRender{
    constructor(){
        this.instance_ = null;
        this.registerEvent();
    }

    static getInstance(){
        if(!this.instance_){
            this.instance_ = new MyRender();
        }
        return this.instance_;
    }

    setTitle(arg)
    {
        ipcRenderer.send('setTitle', arg)
    }

    maxmizeWindow(arg){
        console.log('最大化窗口', arg)
        //ipcRenderer.send('operationWindow',{command: 'maxmizeWindow', arg: arg});
    }

    minimizeWindow(arg){
        console.log('最小化窗口', arg)
        //ipcRenderer.send('operationWindow',{command: 'minimizeWindow', arg: arg});
    }
    
    //注册 渲染进程监听主进程事件
    registerEvent(){

    }
}

//创建单例模块 并导入模块
const render = MyRender.getInstance()
module.exports = render;