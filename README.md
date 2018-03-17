# ssr_install
&nbsp;

ssr install command
```
wget -N --no-check-certificate https://raw.githubusercontent.com/tao659/ssr_install/master/ssr.sh && chmod +x ssr.sh && ./ssr.sh
```

bbr install command
```
wget -N --no-check-certificate https://raw.githubusercontent.com/tao659/ssr_install/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
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
