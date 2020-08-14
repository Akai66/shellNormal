awk 'BEGIN{
	serverNum=0
	requestNum=0
	startNum=0
	showNum=0
	clickNum=0
	showfailNum=0
	winNum=0
	totalNum=0
}{
	if($0~/d=server/){
		serverNum+=1
	}
	if($0~/d=request/){
		requestNum+=1
	}
    if($0~/d=start/){
        startNum+=1
    }
	if($0~/d=show/){
		showNum+=1
	}
	if($0~/d=click/){
		clickNum+=1
	}
	if($0~/d=showfail/){
		showfailNum+=1
	}
	if($0~/d=win/){
		winNum+=1
	}
	totalNum+=1	
}END{
	print "serverNum:" serverNum
	print "requestNum:" requestNum
	print "startNum:" startNum
	print "showNum:" showNum
	print "clickNum:" clickNum
	print "showfailNum:" showfailNum
	print "winNum:" winNum
	print "totalNum:" totalNum
}
'
