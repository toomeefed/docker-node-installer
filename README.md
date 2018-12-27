# docker-node-installer

> 仅仅是 `yarn --prod` 命令的镜像而已

> 集成常用模块的淘宝镜像

[GitHub](https://github.com/toomeefed/docker-node-installer)
|
[Docker Store](https://store.docker.com/community/images/toomee/node-installer)

## 使用

```sh
$ docker run --rm -v $PWD:/app toomee/node-installer:8
# 或者
$ docker run --rm -v $PWD:/app toomee/node-installer:8 npm install --production
```

## 标签对应关系

Image Name | Node | Yarn | npm | Dockerfile
:-- | :-- | :-- | :--
toomee/node-installer:8 | v8.15.0 | v1.12.3 | v6.4.1 | [Dockerfile](https://github.com/toomeefed/docker-node-installer/blob/master/8/Dockerfile)
toomee/node-installer:10 | v10.15.0 | v1.12.3 | v6.4.1 | [Dockerfile](https://github.com/toomeefed/docker-node-installer/blob/master/10/Dockerfile)
