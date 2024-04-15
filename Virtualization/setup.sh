sudo apt update
sudo apt install -y nginx

cat << EOF > /etc/nginx/sites-available/default
server {
    Listen 80;
    server_name localhost;

    location / {
        proxy_pass http://192.168.33.11:8000;
    }
}
EOF

sudo systemctl restart nginx.service