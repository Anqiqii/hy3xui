# hy3xui
A script for deploying hysteria2 and 3xui via docker —— It integrates nginx and acme.sh, and can deploy proxy nodes of the reality protocol using your own domain name.

视频演示使用：
https://youtu.be/D9WRy9nI4Kg

简易文档：
CDN 节点可选 xhttp 与 httpupgrade 两种传输层协议。可以搭配 Vless 与 Trojan ，服务端不开启tls，客户端需要开启tls；对于XHTTP，cloudflare需要开启 grpc 支持；两者在 cloudflare 都需要设置“回源规则”。

如果不想配置cloudflare的回源规则，可以采用如下路径（将节点的路径设置为“前缀＋端口”的形式）：

xhttp节点使用的路径前缀：
/xhttpgrpc
 
httpupgrade节点使用的路径前缀：
/wshttpup

⚠ CDN节点不要直连！不要直连！不要直连！对于客户端，需要统一将端口设置为 443 并将TLS打开。
部分TLS阻断严格的地区可能需要开启客户端的tls切片功能。
