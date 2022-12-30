# 编写智能合约

## 什么是智能合约

是一种在以信息化方式传播、验证或执行合同的计算机协议，简单说就是在区块链上运行的程序

## solidity 开发环境搭建

安装编译器 solc

```shell
npm install -g solc
```

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

运行以下命令行，编译 hello.sol 合约并得到编译字节码结果

```shell
solcjs --bin hello.sol
```

如果编译通过，此目录会得到包含字节码的结果文件 hello_sol_Hello.bin，如果编译失败则提示错误信息。 运行以下命令行，编译 hello.sol 合约并得得到合约接口说明（ABI）：

```shell
solcjs --abi hello.sol
```

## 安装编辑器

安装 [remix 编辑器](https://github.com/ethereum/remix-desktop/releases)

## Solidity 语法
