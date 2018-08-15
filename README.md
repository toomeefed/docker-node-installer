# docker-node-installer

> 仅仅是 yarn --prod 命令的镜像而已

> 集成常用模块的淘宝镜像

[GitHub](https://github.com/toomeefed/docker-node-installer)
|
[Docker Store](https://store.docker.com/community/images/toomee/node-installer)

## 使用

```sh
$ docker pull toomee/node-installer:8
```

到项目目录下执行：

```sh
$ docker run --rm -v $(pwd):/app toomee/node-installer:8
# 或者
$ docker run --rm -v $(pwd):/app toomee/node-installer:8 npm install --production
```


## 标签对应关系

Image Name | Node | Yarn | Dockerfile
:-- | :-- | :-- | :--
toomee/node-installer:8 | v8.11.3 | v1.9.4 | [8](https://github.com/toomeefed/docker-node-installer/blob/master/8/Dockerfile)
toomee/node-installer:10 | v10.8.0 | v1.9.4 | [10](https://github.com/toomeefed/docker-node-installer/blob/master/10/Dockerfile)
