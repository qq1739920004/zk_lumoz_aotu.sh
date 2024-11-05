#!/bin/bash

# 主菜单函数
main_menu() {
    echo "请选择一个操作:"
    echo "1) 安装并开始挖矿"
    echo "2) 卸载挖矿"
    echo "3) 查看日志"
    read -p "输入选项 (1/2/3): " choice

    case $choice in
        1) install_and_start ;;
        2) uninstall ;;
        3) view_logs ;;
        *) echo "无效选项"; main_menu ;;
    esac
}

# 安装并开始挖矿函数
install_and_start() {
    # 获取用户输入的钱包地址和矿工名称
    read -p "请输入钱包地址: " wallet_address
    read -p "请输入矿工名称: " miner_name

    echo "请选择矿机类型:"
    echo "1) Nvidia"
    echo "2) AMD"
    read -p "输入选项 (1/2): " gpu_choice

    if [ "$gpu_choice" -eq 1 ]; then
        # 下载并解压Nvidia矿机
        wget https://github.com/6block/zkwork_moz_prover/releases/download/v1.0.1/moz_prover-v1.0.1_cuda.tar.gz
        tar -zvxf moz_prover-v1.0.1_cuda.tar.gz
        cd moz_prover || exit
    elif [ "$gpu_choice" -eq 2 ]; then
        # 下载并解压AMD矿机
        wget https://github.com/6block/zkwork_moz_prover/releases/download/v1.0.1/moz_prover-v1.0.1_ocl.tar.gz
        tar -zvxf moz_prover-v1.0.1_ocl.tar.gz
        cd moz_prover || exit
    else
        echo "无效选项，返回主菜单"
        main_menu
        return
    fi

    # 更新inner_prover.sh中的钱包地址和矿工名称
    sed -i "s/^reward_address=.*/reward_address=$wallet_address/" inner_prover.sh
    sed -i "s/^custom_name=.*/custom_name=\"$miner_name\"/" inner_prover.sh

    # 开始挖矿
    sudo chmod +x run_prover.sh
    ./run_prover.sh

    echo "挖矿已开始"
}

# 卸载挖矿函数
uninstall() {
    echo "正在卸载挖矿程序..."
    rm -rf moz_prover moz_prover-v1.0.1_cuda.tar.gz moz_prover-v1.0.1_ocl.tar.gz
    echo "挖矿程序已卸载"
}

# 查看日志函数
view_logs() {
    if [ -f "moz_prover/prover.log" ]; then
        tail -f moz_prover/prover.log
    else
        echo "日志文件不存在，请先安装并开始挖矿"
    fi
}

# 运行主菜单
main_menu
