grep 'soft    nofile          65536' /etc/security/limits.conf
if [ $? -ne 0 ]; then
    echo "*                soft    nofile          65536" >> /etc/security/limits.conf
fi
grep 'hard    nofile          65536' /etc/security/limits.conf
if [ $? -ne 0 ]; then
    echo "*                hard    nofile          65536" >> /etc/security/limits.conf
fi

sed -i -e '/bridge-nf-call-ip6tables/d' /etc/sysctl.conf
sed -i -e '/bridge-nf-call-iptables/d' /etc/sysctl.conf
sed -i -e '/bridge-nf-call-arptables/d' /etc/sysctl.conf

sed -i -e '/tcp_fin_timeout/d' /etc/sysctl.conf
sed -i -e '/tcp_keepalive_time/d' /etc/sysctl.conf
sed -i -e '/tcp_syncookies/d' /etc/sysctl.conf
sed -i -e '/tcp_tw_reuse/d' /etc/sysctl.conf
sed -i -e '/tcp_tw_recycle/d' /etc/sysctl.conf
sed -i -e '/tcp_max_syn_backlog/d' /etc/sysctl.conf
sed -i -e '/tcp_window_scaling/d' /etc/sysctl.conf
sed -i -e '/tcp_sack/d' /etc/sysctl.conf
sed -i -e '/tcp_max_tw_buckets/d' /etc/sysctl.conf
sed -i -e '/route.gc_timeout/d' /etc/sysctl.conf
sed -i -e '/tcp_syn_retries/d' /etc/sysctl.conf
sed -i -e '/tcp_orphan_retries/d' /etc/sysctl.conf

echo 'net.ipv4.tcp_orphan_retries = 1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_fin_timeout = 5' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_keepalive_time = 1200' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_syncookies = 1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_tw_reuse = 1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_tw_recycle = 1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_max_syn_backlog = 16384' >> /etc/sysctl.conf    
echo 'net.ipv4.tcp_window_scaling = 0' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_sack = 0' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_max_tw_buckets = 1000' >> /etc/sysctl.conf
echo 'net.ipv4.route.gc_timeout = 100' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_syn_retries = 2' >> /etc/sysctl.conf

sysctl -p
