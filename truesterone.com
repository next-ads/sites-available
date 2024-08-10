server {
server_name truesterone.co www.truesterone.co;

location / {

  proxy_pass http://localhost:4321;
  proxy_set_header Host $host;
  proxy_set_header X-Real-IP $remote_addr;
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  proxy_set_header X-Forwarded-Proto $scheme;
  proxy_http_version 1.1;
  proxy_set_header Upgrade $http_upgrade;
  proxy_set_header Connection 'upgrade';
  proxy_set_header X-NginX-Proxy true;

  proxy_redirect off;
  }

  #listen 443 ssl; # managed by Certbot
   #ssl_certificate /etc/letsencrypt/live/truesterone.co/fullchain.pem; # managed by Certbot
   #ssl_certificate_key /etc/letsencrypt/live/truesterone.co/privkey.pem; # managed by Certbot
   #include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
   #ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/truesterone.co/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/truesterone.co/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot


}
server {
    if ($host = www.truesterone.co) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    if ($host = truesterone.co) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


listen 80;
server_name truesterone.co www.truesterone.co;
    return 404; # managed by Certbot




}