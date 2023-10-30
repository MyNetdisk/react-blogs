<div align="left">

简体中文 | [English](https://github.com/MyNetdisk/react-blogs/blob/master/README.md)

</div>

# React Blog System - 一个基于 React.js, Next.js, Ant Design 和 Egg.js 的博客系统

## 项目概述

React Blog System 是一个全栈博客系统，采用了现代化的前端技术栈，包括 React.js 和 Next.js，以及后端技术栈，包括 Egg.js 和 MySQL 数据库。这个仓库包含四个子仓库，每个子仓库负责不同的任务：

1. **react-blog-admin**: 博客后台管理网站，用于管理博客内容和配置。
2. **react-blog-database**: 博客项目数据库，存储博客文章和相关数据。
3. **react-blog-server**: 博客 web 服务器，提供 API 和服务端渲染。
4. **react-blog-web**: 博客网站，展示博客文章和页面。

## 访问链接

- 博客网站：[https://blog.mynetdisk.top](https://blog.mynetdisk.top)
- 后台管理网站：[https://admin.mynetdisk.top](https://admin.mynetdisk.top)
- 博客 web 服务器 API：[https://api.mynetdisk.top](https://api.mynetdisk.top)
- 数据库：[https://db.mynetdisk.top](https://db.mynetdisk.top)

## 技术栈

- 前端采用 React.js 技术以及 Next.js 框架，提供高性能和 SEO 优化。
- 后端数据库使用 MySQL 存储博客文章和数据。
- Web 服务器使用 Node.js 框架 Egg.js，提供强大的后端支持。
- 使用 Jenkins 进行项目自动化部署和持续集成。
- 采用 Docker 和 Docker Compose 进行容器化部署，实现轻松的环境隔离。
- 使用 Traefik 进行容器编排，提供反向代理和负载均衡支持。
- 使用 deploy.sh 脚本实现一键部署，简化部署流程。

## 开源协议

本项目采用 MIT 开源协议，允许自由使用和修改，详细信息请参考 [LICENSE](LICENSE) 文件。

## 子仓库

- [react-blog-admin](https://github.com/MyNetdisk/react-blog-admin): 博客后台管理网站
- [react-blog-database](https://github.com/MyNetdisk/react-blog-database): 博客项目数据库
- [react-blog-server](https://github.com/MyNetdisk/react-blog-server): 博客 web 服务器
- [react-blog-web](https://github.com/MyNetdisk/react-blog-web): 博客网站

## 贡献

我们欢迎各种形式的贡献，包括代码贡献、Bug 报告和改进建议。如果你有任何想法或建议，可以在相应的子仓库中提出问题或请求。你的贡献将有助于改进这个项目。

## 本地开发和部署

- 请参考每个子仓库的文档以了解如何在本地开发和部署各个组件。
- 使用 deploy.sh 脚本进行一键部署，简化项目部署流程。