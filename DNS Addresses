providers = ["Level3", "Verisign", "Google", "Quad9", "DNS.WATCH",
             "Comodo Secure DNS", "OpenDNS Home", "Norton ConnectSafe",
             "GreenTeamDNS", "SafeDNS", "OpenNIC", "SmartViper", "Dyn",
             "FreeDNS", "Alternate DNS", "Yandex.DNS", "UncensoredDNS",
             "Hurricane Electric", "puntCAT", "Neustar", "Cloudflare",
             "Fourth Estate"]

ips = ["209.244.0.3", "64.6.64.6", "8.8.8.8", "9.9.9.9", "84.200.69.80",
       "8.26.56.26", "208.67.222.222", "199.85.126.10", "81.218.119.11",
       "195.46.39.39", "69.195.152.204", "208.76.50.50", "216.146.35.35",
       "37.235.1.174", "198.101.242.72", "77.88.8.8", "91.239.100.100",
       "74.82.42.42", "109.69.8.51", "156.154.70.1", "1.1.1.1", "45.77.165.194"]


# Provider dictionary
DNS_dictionary = {}

# For loop that creates a dictionary mapping the provider names to their IPs.
for idx in range(0, len(providers)):
       DNS_dictionary[providers[idx]] = ips[idx]
print("DNS Dictionary: ")
print(DNS_dictionary)
print("--------")

# Prints Hurricane Electric's IP
print("Hurricane Electric's IP is: " + DNS_dictionary["Hurricane Electric"])
print("--------")
print("--------")

# List of providers
DNS_dictionaries = []

# For loop that creates a list of dictionaries of Providers with their respective IP
for idx in range(0,len(providers)):
       entry = {"provider _name ": providers[idx], "primary_server": ips[idx]}
       DNS_dictionaries.append(entry)

print("DNS Dictionaries: ")
print(DNS_dictionaries)
print("--------")

# Prints the total number of providers
print("Number of providers: " + str(len(providers)))
print("--------")
print("--------")
