// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// No Node.js APIs are available in this process because
// `nodeIntegration` is turned off. Use `preload.js` to
// selectively enable features needed in the rendering
// process.


// test 1:  使用 主进程 暴露 给渲染进程的 功能
const information = document.getElementById('info')
information.innerText = `本应用正在使用 Chrome (v${versions.chrome()}), Node.js (v${versions.node()}), 和 Electron (v${versions.electron()})`



//test 2：渲染进程 调用 主进程 的函数    （单向的，不等待返回结果）
//html 页面 按钮点击事件
const setButton = document.getElementById('btn')
const titleInput = document.getElementById('title')
setButton.addEventListener('click', () => {
    const title = titleInput.value
    //为了使这些元素具有交互性，我们将在导入的 renderer.js 文件中添加几行代码，以利用从预加载脚本中暴露的 window.electronAPI 功能：
    window.electronAPI.setTitle(title)
});


