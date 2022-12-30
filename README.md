# 编写智能合约

## 参考

http://www.17bigdata.com/study/programming/solidity/solidity-index.html

## 什么是智能合约

是一种在以信息化方式传播、验证或执行合同的计算机协议，简单说就是在区块链上运行的程序

## solidity 开发环境搭建

1. 安装 node
2. 安装编译器 solc

```shell
npm install -g solc
```

安装 [remix 编辑器](https://github.com/ethereum/remix-desktop/releases)

## 编译合约

写一条合约文件

```js
pragma solidity >=0.7.0 <0.9.0;

contract Hello {
    string name;

    constructor() {
        name = "Hello world!";
    }

    function hello() public view returns (string memory) {
        return name;
    }
}
```
