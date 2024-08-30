"""collection of ping support functions"""
import os

# Bas-IP-adress
BASE_IP = "192.168.1."

def ping_last_octet(base_ip):
    """
    ping last octet
    """
    uppe=[]
    nere=[]
    for i in range(256):
        ip = base_ip + str(i)
        response = os.system(f"ping -c 1 -W 1 {ip}")
        if response == 0:
            uppe.append(ip)
        else:
            nere.append(ip)
    no_up=len(uppe)
    no_down=len(nere)
    print(f"{uppe} {no_up} is up")
    print(f"{nere} {no_down} is down")
    return uppe

ping_last_octet(BASE_IP)
