# MyWebServer
一个基于C++11的Web服务器

Linux下C++轻量级Web服务器，助力初学者快速实践网络编程，搭建属于自己的服务器.

使用线程池 + epoll(ET和LT均实现) + 模拟Proactor模式的并发模型
使用状态机解析HTTP请求报文，支持解析GET和POST请求
通过访问服务器数据库实现web端用户注册、登录功能，可以请求服务器图片和视频文件
经Webbench压力测试可以实现上万的并发连接数据交换

# 基础测试

浏览器测试环境

Windows、Linux均可
Chrome
FireFox
其他浏览器暂无测试

测试前确认已安装MySQL数据库

// 建立yourdb库
create database yourdb;

// 创建user表
USE yourdb;
CREATE TABLE user(
    username char(50) NULL,
    passwd char(50) NULL
)ENGINE=InnoDB;

// 添加数据
INSERT INTO user(username, passwd) VALUES('name', 'passwd');
