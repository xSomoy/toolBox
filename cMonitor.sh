#bin bash
function pingTest {
	ping 8.8.8.8 -c 100
	sleep 5s
	clear
	pingTest
}
pingTest
