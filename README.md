# 2019 Bingyan Summer Camp最终项目

本项目是冰岩2019夏令营程序组最终验收项目，建立一个网上商城平台。

[API文档](https://github.com/Lyt99/bingyan-summer-camp-2019/blob/master/final_task.md)

程序额外实现了：缩略图和系统消息（商品删除消息）。

缩略图接口：

```json
{
    "data": [
    	{
    		"id": 8,
    		"title": "example2",
    		"price": 18,
    		"category": 2,
    		"picture": "http://127.0.0.1:8080/upload/c3344781a8a0e3488e88c721ee98fb3a1563962614.jpg",
    		"thumbnail": "http://127.0.0.1:8080/upload/thumbnail_c3344781a8a0e3488e88c721ee98fb3a1563962614.jpg"
		}
    ]
}
```

系统消息接口：

```go
GET("/messages")
```



## 主项目部分

### 实现

- go version go1.12.6 windows/amd64
- WAMPSERVER 3.1.7 64 bit (5.7.24 MySQL Community Server (GPL))

### 第三方库

[项目实现所需第三方库](https://github.com/tctco/bingyanFinal/blob/master/src/go.mod)

### 环境

- 系统：Windows10
- 框架：Gin
- 数据库：Mysql
- IDE：Goland
- 测试工具：Postman

### 说明事项

- 图片采用本地存储
- 搜索实现不支持分词
- 不区分买家和卖家
- 不支持商品购买、显示商品数量等
- 路由添加于view层
- 图片名称由上传图片名散列值+时间戳组成。可以使用图片名最后10位代替商品发售的时间戳。



## Docker

### 使用Docker-Compose

- 主程序开放端口：9990
- 数据库开放端口：52013# bingyanFinal
