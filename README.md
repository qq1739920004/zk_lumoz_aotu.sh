# 一键运行教程
## 要求
- 操作系统版本：Ubuntu 20.04+
- Nvidia 驱动程序版本：535.54.03 +
## 使用说明
1. **一键下载并运行**

    ```bash
    wget https://raw.githubusercontent.com/qq1739920004/zk_lumoz_auto.sh/refs/heads/master/mint_lumoz.sh -O mint_lumoz.sh  && chmod +x mint_lumoz.sh && ./mint_lumoz.sh
    ```

## 步骤 1：一键运行矿工
![image](https://github.com/user-attachments/assets/a79c84be-2e47-4459-92d6-2a858d712238)
![image](https://github.com/user-attachments/assets/aa9e1776-9163-4954-9b31-7ede8e3f555d)

1. **钱包地址**：请输入你的 EVM 地址。
2. **矿工名称**：自定义一个矿工名称。

运行程序后，矿工将自动启动并开始工作。

## 步骤 2：在钱包中查看 MOZ 代币

如果你想查看钱包中的 MOZ 代币，需要先在钱包中添加一个网络。请按照以下步骤操作：

### 配置网络

1. **网络名称**：Arbitrum Sepolia Mainnet
2. **RPC 端点**：`https://sepolia-rollup.arbitrum.io/rpc`
3. **链 ID**：`0x66eee`
4. **货币符号**：ETH
5. **区块浏览器**：https://sepolia.arbiscan.io/

### 导入自定义 Token

1. 通过合约导入自定义 Token 地址：`0xFB81A910AAFE8f04242Bb364a8Cf7AC359e020bf`。
   
   如果你使用的是 MetaMask，请参考 [这里](https://sepolia.arbiscan.io/token/0xfb81a910aafe8f04242bb364a8cf7ac359e020bf?a=0x4Da41A67891498A7B534e9C22DfeFB99caAfAa5F) 了解具体操作。

## 步骤 3：查看算力与已挖到的 MOZ

启动矿工后，你可以访问以下网站查看你的算力和已挖到的 MOZ 代币：

[查看算力与 MOZ](https://zk.work/zhTW/lumoz/address/0x618ba708b9fe6c735f023803156daf9c87b39dd5/dashboard)


