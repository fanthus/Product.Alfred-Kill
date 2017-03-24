# Product.Alfred-Kill
An alfred workflow to kill process
 kill 是一个 Alfred 的 Workflow ，内置了两个命令 kill 和 killf 。

两个的命令的工作原理类似，都是利用top命令列出当前进程名，然后通过关键字匹配进程的名字去杀死对应的进程。

kill 会去当前的  /Application 目录下匹配当前所有的应用，然后将应用名字作为关键字去top命令中去进行匹配。获取到对应的进程号后执行 kill 命令。

Alfred对于开发脚本相关的小程序还是很友善的，kill 采用了 Script Filter 的方案进行程序名称的筛选。具体 Script Filter 的说明看 这里 。

说一个开发时候遇到的问题，就是关于 json 数据的。官方 json 样例 类似下面

    {"items": [
        {
            "uid": "desktop",
            "type": "file",
            "title": "Desktop",
            "subtitle": "~/Desktop",
            "arg": "~/Desktop",
            "autocomplete": "Desktop",
            "icon": {
                "type": "fileicon",
                "path": "~/Desktop"
            }
        }
    ]}

写的时候图简单。很多参数都没有传，只是传了必备的 title subtitle icon 。但是在 Alfred 快捷弹框里输入了关键字匹配出结果之后，选中对应的结果，敲回车始终没反应，找了半天发现是因为 arg 这个参数没有传，官方对这个参数的解释是 

arg : STRING (recommended)  The argument which is passed through the workflow to the connected output action.

加上这个参数之后就一马平川了。这是学了一周 shell 之后的一个小 demo 很多不足，之后可以慢慢改进。

总体感觉 shell编程还是非常高效和实用的。而且应用场景非常广泛。
