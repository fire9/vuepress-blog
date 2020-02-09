# VuePress 搭建自己的博客

> 好记性, 不如烂笔头。

### 搭建博客环境

**请确保你的 Node.js 版本 >= 8**

全局安装 vuepress

```bash
yarn global add vuepress
```

创建博客目录

```bash
mkdir vuelpress-blog && cd vuepress-blog
```

初始化工程目录 vuepress-blog

```shell
yarn init -y
yarn add -D vuepress
```

修改 `package.json` 文件，添加脚本功能

```bash
cat > package.json <<EOF
"scripts": {
    "dev": "vuepress dev docs",
    "build": "vuepress build docs",
    "deploy": "zsh deploy.sh"
}
EOF
```

创建写作文档目录

```bash
mkdir -p docs/.vuepress/{public,style}
touch docs/.vuepress/config.js
touch docs/README.md
yarn dev
```

### 更新与维护

配置 `.gitignore` 文件

这个仓库不是最终发布到`github`的博客内容，所以需要忽略掉静态文件。

```shell
cat > .gitignore <<EFOF
.DS_Store
node_modules/
.vuepress/
EOF
```

### 参考

-   [VuePress 静态网站生成器](https://vuepress.vuejs.org/zh/)
-   [prismjs](https://prismjs.com/)
