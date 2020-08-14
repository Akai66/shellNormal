#!/bin/bash
#Author:liukai
#Time:2018-09-13 18:19:20
#Description:test
#domainlist=(hz01-c3-video-ise09.hz01 hz01-c3-video-ise08.hz01 hz01-c3-video-ise07.hz01 hz01-c3-video-ise06.hz01 hz01-c3-video-ise00.hz01 hz01-c3-video-ise01.hz01 hz01-c3-video-ise03.hz01 hz01-c3-video-ise04.hz01 hz01-c3-video-ise05.hz01)
#domainlist=(192.168.67.45 192.168.67.44 192.168.67.43 192.168.83.98 192.168.67.42 192.168.83.97 192.168.67.41 192.168.67.40 192.168.83.96 192.168.83.95 192.168.83.94 192.168.83.93 192.168.83.92 192.168.83.91 192.168.67.39 192.168.83.90 192.168.67.38 192.168.83.88 192.168.83.87 192.168.67.37 192.168.67.36 192.168.67.35)
#domainlist=(192.168.83.88 192.168.67.44 192.168.83.151 192.168.83.97 192.168.67.133 192.168.67.117 192.168.83.153 192.168.67.42 192.168.83.159 192.168.83.90 192.168.67.38 192.168.83.95 192.168.83.152 192.168.81.217 192.168.83.96 192.168.83.93 192.168.67.112 192.168.81.219 192.168.83.161 192.168.83.92 192.168.83.156 192.168.67.40 192.168.81.246 192.168.83.167 192.168.83.168 192.168.81.235 192.168.67.116 192.168.67.142 192.168.83.169 192.168.83.98 192.168.81.230 192.168.83.164 192.168.81.215 192.168.67.134 192.168.64.203 192.168.83.155 192.168.83.150 192.168.83.91 192.168.67.135 192.168.67.113 192.168.83.154 192.168.67.43 192.168.67.39 192.168.83.163 192.168.67.45 192.168.83.162 192.168.83.94 192.168.83.170 192.168.82.216 192.168.82.212 192.168.82.213 192.168.81.231 192.168.80.243 192.168.82.214 192.168.83.87 192.168.82.126 192.168.64.161 192.168.83.186 192.168.82.117 192.168.64.199 192.168.82.119 192.168.82.121 192.168.82.217 192.168.82.1 192.168.67.35 192.168.64.194 192.168.64.193 192.168.64.167 192.168.64.155 192.168.83.188 192.168.82.125 192.168.83.158 192.168.64.196 192.168.83.182 192.168.81.245 192.168.83.173 192.168.82.123 192.168.83.176 192.168.81.243 192.168.64.197 192.168.64.162 192.168.83.187 192.168.64.160 192.168.82.118 192.168.83.174 192.168.81.255 192.168.82.116 192.168.83.171 192.168.82.120 192.168.64.154 192.168.82.127 192.168.64.157 192.168.81.244 192.168.83.175 192.168.64.190 192.168.67.46 192.168.64.198 192.168.64.159 192.168.64.165 192.168.82.115 192.168.82.215 192.168.82.124 192.168.67.37 192.168.64.195 192.168.83.183 192.168.81.247 192.168.67.36 192.168.82.122 192.168.64.192 192.168.64.191 192.168.81.241 192.168.64.152 192.168.64.158 192.168.82.128 192.168.83.177 192.168.67.111 192.168.64.156 192.168.82.129 192.168.81.242 192.168.64.153 192.168.83.172 192.168.83.157)
domainlist=(192.168.67.166 192.168.67.165 192.168.67.163 192.168.67.162 192.168.67.161 192.168.67.160 192.168.67.159 192.168.67.158 192.168.67.157 192.168.67.156 192.168.67.155 192.168.67.153 192.168.67.152 192.168.67.151)
for domain in ${domainlist[*]}
do
	echo $domain
	for((i=1;i<=2;i++));
	do
		#curl -sL -w "%{http_code}" "http://$domain:8082/adver/?terminal=pc&position=dasoupinzhuanPCSearchup&id=dasouzhuanPCSearchup&site=http%3A%2F%2Fv.baidu.com%2Fv%3Fct%3D301989888%26rn%3D20%26pn%3D0%26db%3D0%26s%3D25%26ie%3Dutf-8%26word%3D%25E5%25AD%25A6%25E8%258B%25B1%25E8%25AF%25AD%25E8%25AF%25A5%25E5%2585%25BB%25E6%2588%2590%25E5%2593%25AA%25E4%25BA%259B%25E4%25B9%25A0%25E6%2583%25AF&refer=https%3A%2F%2Fwww.baidu.com%2Fs%3Fie%3Dutf-8%26f%3D8%26rsv_bp%3D1%26rsv_idx%3D1%26tn%3D25017023_10_pg%26wd%3D%25E5%25AD%25A6%25E8%258B%25B1%25E8%25AF%25AD%25E8%25AF%25A5%25E5%2585%25BB%25E6%2588%2590%25E5%2593%25AA%25E4%25BA%259B%25E4%25B9%25A0%25E6%2583%25AF%26oq%3D%2525E7%2525BD%252591%2525E6%252598%252593%2525E5%252585%2525AC%2525E5%2525BC%252580%2525E8%2525AF%2525BE%26rsv_pq%3Df21cfbb80000a860%26rsv_t%3D7dddTA7b%252FnypeiEO2Ist4nou59fKiohqysTDis8heUknFHqT2hcjNUCPwzLHqNMwmoUnxbY%26rqlang%3Dcn%26rsv_enter%3D1%26rsv_sug1%3D56%26rsv_sug7%3D101%26rsv_sug3%3D58%26bs%3D%25E7%25BD%2591%25E6%2598%2593%25E5%2585%25AC%25E5%25BC%2580%25E8%25AF%25BE&keywords=gucci" -o /dev/null
        #curl -sL -w "%{http_code}" "http://$domain:8082/adver/?terminal=pc&position=indexBottomColumn2&version=100.100.100&id=indexBottomColumn2&site=http%3A%2F%2Flist.video.baidu.com%2Fopen%2Fglobal%2Fadxtest.html%3Fpos%3DindexBottomColumn2%26qq-pf-to%3Dpcqq.discussion&refer=&callback=video_ajax_callback_de2toa&ip=124.65.236.130" -o /dev/null
        #curl -sL -w "%{http_code}" "http://$domain:8082/adver/?terminal=pc&position=PCallpagesidebar&id=PCallpagesidebar&site=http%3A%2F%2Fbaishi.baidu.com%2F&refer=http%3A%2F%2Fv.baidu.com%2Fwatch%2F04105040068202992256.html%3Ffr%3Dv.baidu.com%2Fchannel%2Fshort%2Fnewxiaopin%26tabfr%3D%2Fchannel%2Fshort%2Fnewxiaopin&keywords=&works_id=08110197127438771375&callback=video_ajax_callback_1drasb6" -o /dev/null
        curl -sL -w "%{http_code}" "http://$domain:8082/adver/?cuid=116&terminal=adnative&adver_version=0.0.0&position=verticalScreenFeed&beg=120&end=126&block_sign=&dpi=480&imsi=460014463606045&tag=&current=120&total=126&device=android&os=1&os_version=25&screen_width=1080&screen_height=1920&imei=866508030013176&locale=zh_CN&vendor=OPPO&model=OPPO+R11&android_id=2950c7b3a77a625d&connection_type=100&operator_type=3&orientation=p&uniqueid=d5c55f6cf06a411a83e8f6662b793c0a&mtj_timestamp=1570700815440&mac_address=02:00:00:00:00:00&ados_ver=7.1.1&dev=OPPOR11&lf=eyJsb25naXR1ZGUiOiIxMTIuODIyNTY1IiwibGF0aXR1ZGUiOiIzNS40OTQ0NzYifQ%3D%3D%0A&channel=875f&version=8.11.1&_smc=1&_irt=0&_adsdk=25&fstapktime=1546858448858" -o /dev/null
	done
	echo 'end'
done
