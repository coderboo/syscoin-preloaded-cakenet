LITECOIND=syscoind
S1_FLAGS=
S2_FLAGS=
S3_FLAGS=
S4_FLAGS=
S5_FLAGS=
S1=$(LITECOIND) -datadir=1 $(S1_FLAGS)
S2=$(LITECOIND) -datadir=2 $(S2_FLAGS)
S3=$(LITECOIND) -datadir=3 $(S2_FLAGS)
S4=$(LITECOIND) -datadir=4 $(S2_FLAGS)
S5=$(LITECOIND) -datadir=5 $(S2_FLAGS)

start:
	$(S1) -daemon
	$(S2) -daemon
	$(S3) -daemon
	$(S4) -daemon
	$(S5) -daemon
	
generate-true:
	$(S1) setgenerate true
	
generate-false:
	$(S1) setgenerate false
	
getinfo:
	$(S1) getinfo
	$(S2) getinfo
	$(S3) getinfo
	$(S4) getinfo
	$(S5) getinfo

getmininginfo: 
	$(S1) getmininginfo
	$(S2) getmininginfo
	$(S3) getmininginfo
	$(S4) getmininginfo
	$(S5) getmininginfo


getaccountaddress:
	$(S1) getaccountaddress ""
	$(S2) getaccountaddress ""
	$(S3) getaccountaddress ""
	$(S4) getaccountaddress ""
	$(S5) getaccountaddress ""

stop:
	$(S1) stop
	$(S2) stop
	$(S3) stop
	$(S4) stop
	$(S5) stop

clean:
	rm -rf 1/testnet*
	rm -rf 2/testnet*
	rm -rf 3/testnet*
	rm -rf 4/testnet*
	rm -rf 5/testnet*
