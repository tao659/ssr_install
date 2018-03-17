# ssr_install
&nbsp;

ssr install command
```
wget -N --no-check-certificate https://github.com/tao659/ssr_install/raw/master/ssr.sh && chmod +x ssr.sh && ./ssr.sh
```

- 默认加密为： chacha20
- 默认协议为： auth_sha1_v4
- 默认混淆为： http_simple

- 启动： /etc/init.d/ssr start
- 停止： /etc/init.d/ssr stop
- 重启： /etc/init.d/ssr restart
- 状态： /etc/init.d/ssr status

- 配置文件路径： /etc/ssr.json
- 安装路径： /usr/local/shadowsoks

bbr install command
```
wget -N --no-check-certificate https://github.com/tao659/ssr_install/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
```



 安装完成后，脚本会提示需要重启 VPS，输入 y 并回车后重启。
重启完成后，进入 VPS，验证一下是否成功安装最新内核并开启 TCP BBR，输入以下命令：

uname -r

查看内核版本，显示为最新版就表示 OK 了

sysctl net.ipv4.tcp_available_congestion_control

返回值一般为：
net.ipv4.tcp_available_congestion_control = bbr cubic reno

sysctl net.ipv4.tcp_congestion_control

返回值一般为：
net.ipv4.tcp_congestion_control = bbr

sysctl net.core.default_qdisc

返回值一般为：
net.core.default_qdisc = fq

lsmod | grep bbr

返回值有 tcp_bbr 模块即说明 bbr 已启动。
