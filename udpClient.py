import socket
import netifaces as ni

def Main():
        host = ni.ifaddresses('wlan0')[ni.AF_INET][0]['addr']
        port = 5001
        server = ('255.255.255.255',5000)

        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
        s.bind((host,port))

        message = socket.gethostname()
        s.sendto(message.encode('utf-8'), server)
        s.close()

if __name__ == '__main__':
        Main()
