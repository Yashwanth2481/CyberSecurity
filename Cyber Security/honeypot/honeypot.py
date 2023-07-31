from socket import *

def main():
    ip_add = "192.168.1.4"
    port = 80
    print("[+]Honeypot started....")
    try:
        get_socket_con = socket(AF_INET,SOCK_STREAM)
        get_socket_con.bind((ip_add,port))
        get_socket_con.listen(10)
        while 1:
            client_con,client_addr = get_socket_con.accept()
            print("visiter found!  - [{}]".format(client_addr[0]))
            client_con.send(b"<h1>My Server</h1>")
            data = client_con.recv(2048)
            print(data.decode('utf -8'))
    except error as identifier:
        print("[+] unspecified error [{}]".format(identifier))
    except KeyboardInterrupt as ky:
        print("[-]process stoped!")
        get_socket_con.close()
    finally:
        get_socket_con.close()
    get_socket_con.close()
if __name__ == "__main__":
    main()
