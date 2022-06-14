# GitAutoUpdate

一个小脚本，让你的Git仓库统统自动提交并推送

## 前置要求

目前脚本的实现要求所有仓库需要在一个目录下，当然你也可以自己改脚本

配置的所有仓库都已经配置了 ssh key 以及默认提交分支，即不需要任何的人工交互（当然如果有交互也是可以交互的）

## 脚本说明

```bat
set rootdir=e:\
set repos=WebPortalTest;CheerNotebook;SensetimeNotes;GitAutoUpdate
set logfile=E:\GitAutoUpdate\autoUpdate.log
set message="auto update"
```

核心配置就这两句，`repos`是所有仓库的名称，前面加上`rootdir`即为完整路径，`logfile`是日志文件的输出位置，`message`是提交说明

## 如何使用

直接双击即可，脚本自动对每个仓库的修改内容进行`add`、`commit`、`push`操作

## 使用场景

适合不需要考虑什么复杂操作的个人仓库

## 建议添加至系统开机启动
