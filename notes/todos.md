# todo things

## flow

- 测试Alist和nextcloud运行（还是nextcloud）
- rag知识库不支持跨域访问（仅localhost）

nextcloud 可能需要配置https 以及 修改和挂载config

需要验证的地方：

- env_file 与 environment 的覆盖性，结果： eviron 会覆盖 env_file
- docker compose 对 数据卷 的加载，结果： 

docker compose down 默认只会移除container 和 network，只有-v选项才会删除卷（危险操作）。

虽然方便，但还是存在一定的危险性，还是手动删除为好。所以external是个不错的选项。

但其实也可以，毕竟命令这个东西就是这样用的，而重要文件应该随时备份……。

这个跟rm -rf一样的道理，提供功能，但是具体怎么使用还是看机制的设计……。

从语义上说，自己的卷确实应该自己来管理，而不是external，这个是共享或者别人的卷。

- 数据卷的操作

证书的问题可以后面再来搞来看看……

现在还是自动化部署看下……

ssh wolin@local.wolindata.com -L 18080:127.0.0.1:18080 -L 9443:localhost:9443 -L 1111:192.168.110.1:80

###

部署 sqoop hadoop kettle 等等各项组件 ……

### todo

- 沃林官网 - 已修复（Done）
- 自动化脚本修复（Doing）
- 