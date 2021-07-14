# Generate a unique private key (KEY)
sudo openssl genrsa -out anrymart.com.key 2048

# Generating a Certificate Signing Request (CSR)
sudo openssl req -new -key anrymart.com.key -out anrymart.com.csr

# Creating a Self-Signed Certificate (CRT)
openssl x509 -req -days 365 -in anrymart.com.csr -signkey anrymart.com.key -out anrymart.com.crt

# Append KEY and CRT to anrymart.com.pem
sudo bash -c 'cat anrymart.com.key anrymart.com.crt >> /etc/ssl/private/anrymart.com.pem'

# Specify PEM in haproxy config
sudo vi /etc/haproxy/haproxy.cfg
listen haproxy
  bind 0.0.0.0:443 ssl crt /etc/ssl/private/anrymart.com.pem
