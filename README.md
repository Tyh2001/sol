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

```sol
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

## Solidity 基础语法

1. pragma

第一行需要使用 `pragma` 规定版本

2. Contract/智能合约

智能合约是位于以太坊区块链上特定地址的代码和数据的集合。contract 关键字表示一个智能合约

3. 导入文件

下面的语句从 “filename” 导入所有全局符号

```sol
import "filename";
```

下面的示例，创建一个新的全局符号 symbolName，它的成员都是来自 “filename” 的全局符号

```sol
import * as symbolName from "filename";
```

## 遇到的错误

错误 1：

```shell
Warning: SPDX license identifier not provided in source file. Before publishing, consider adding a comment containing "SPDX-License-Identifier: <SPDX-License>" to each source file. Use "SPDX-License-Identifier: UNLICENSED" for non-open-source code. Please see https://spdx.org for more information.
--> 3.sol
```

因为源文件中未提供 SPDX 许可证标识符，解决参考 [警告：源文件中未提供 SPDX 许可证标识符](https://qa.1r1g.com/sf/ask/4566416571/)

解决方案为，在第一行加入标注内容：

```sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SolidityTest{
    function helloWorld() public pure returns(string memory) {
        return "Hello World";
    }
}
```
