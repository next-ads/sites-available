server {
    server_name exposing-truths.com www.exposing-truths.com unraveling-mysteries.com www.unraveling-mysteries.com unveil-revelations.com www.unveil-revelations.com 
                truth-unfolded.com www.truth-unfolded.com unmasking-truths.com www.unmasking-truths.com unraveling-insights.com www.unraveling-insights.com 
                unveil-secrets.com www.unveil-secrets.com reveal-hidden.com www.reveal-hidden.com reveal-insights.com www.reveal-insights.com 
                revelation-digger.com www.revelation-digger.com revelation-explorer.com www.revelation-explorer.com revelation-exposed.com www.revelation-exposed.com 
                revelation-insider.com www.revelation-insider.com revelations-unfolded.com www.revelations-unfolded.com secret-explorer.com www.secret-explorer.com 
                secrets-hidden.com www.secrets-hidden.com secrets-unearthed.com www.secrets-unearthed.com secrets-unlocker.com www.secrets-unlocker.com 
                secrets-unmasked.com www.secrets-unmasked.com truth-exposed.com www.truth-exposed.com truths-unlocker.com www.truths-unlocker.com 
                uncover-hidden.com www.uncover-hidden.com uncovering-truths.com www.uncovering-truths.com uncover-insights.com www.uncover-insights.com 
                breaking-secrets.com www.breaking-secrets.com disclose-insights.com www.disclose-insights.com disclosing-discoveries.com www.disclosing-discoveries.com 
                discovery-unlocker.com www.discovery-unlocker.com divulge-discoveries.com www.divulge-discoveries.com exposed-revelations.com www.exposed-revelations.com 
                exposing-truths.com www.exposing-truths.com hidden-discoveries.com www.hidden-discoveries.com hidden-unveiled.com www.hidden-unveiled.com 
                insights-disclosed.com www.insights-disclosed.com insights-unveiled.com www.insights-unveiled.com insight-unleasher.com www.insight-unleasher.com 
                mystery-revealer.com www.mystery-revealer.com newrealtrick.com www.newrealtrick.com unveil-revelations.com www.unveil-revelations.com 
                unraveling-mysteries.com www.unraveling-mysteries.com unraveling-secrets.com www.unraveling-secrets.com unveiling-hidden.com www.unveiling-hidden.com 
                unveiling-truths.com www.unveiling-truths.com;

    client_max_body_size 5000M;

    location / {
        root /var/www/html/truesterone/;
        index index.php index.html;
        try_files $uri $uri/ /index.php$is_args$args;
    }

    location ~ \.php$ {
        root /var/www/html/truesterone/;
        fastcgi_pass unix:/run/php/php8.3-fpm.sock;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi.conf;
    }

    location ~ /\.ht {
        deny all;
    }

    location = /favicon.ico {
        log_not_found off;
        access_log off;
    }

    location = /robots.txt {
        allow all;
        log_not_found off;
        access_log off;
    }

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/unraveling-mysteries.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/unraveling-mysteries.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot
}

server {
        if ($host = www.unveil-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unveil-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.exposing-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = exposing-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unraveling-mysteries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unraveling-mysteries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.truth-unfolded.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = truth-unfolded.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unmasking-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unmasking-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unraveling-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unraveling-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unveil-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unveil-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.reveal-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = reveal-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.reveal-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = reveal-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.revelation-digger.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = revelation-digger.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.revelation-explorer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = revelation-explorer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.revelation-exposed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = revelation-exposed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.revelation-insider.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = revelation-insider.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.revelations-unfolded.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = revelations-unfolded.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.secret-explorer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = secret-explorer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.secrets-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = secrets-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.secrets-unearthed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = secrets-unearthed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.secrets-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = secrets-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.secrets-unmasked.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = secrets-unmasked.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.truth-exposed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = truth-exposed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.truths-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = truths-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.uncover-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = uncover-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.uncovering-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = uncovering-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.uncover-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = uncover-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.breaking-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = breaking-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.disclose-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = disclose-insights.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.disclosing-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = disclosing-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.discovery-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = discovery-unlocker.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.divulge-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = divulge-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.exposed-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = exposed-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.exposing-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = exposing-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.hidden-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = hidden-discoveries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.hidden-unveiled.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = hidden-unveiled.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.insights-disclosed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = insights-disclosed.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.insights-unveiled.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = insights-unveiled.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.insight-unleasher.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = insight-unleasher.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.mystery-revealer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = mystery-revealer.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.newrealtrick.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = newrealtrick.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

   
    if ($host = www.unveil-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unveil-revelations.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unraveling-mysteries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unraveling-mysteries.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unraveling-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unraveling-secrets.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unveiling-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unveiling-hidden.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = www.unveiling-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    if ($host = unveiling-truths.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

    listen 80;
    server_name exposing-truths.com www.exposing-truths.com unraveling-mysteries.com www.unraveling-mysteries.com unveil-revelations.com www.unveil-revelations.com 
                truth-unfolded.com www.truth-unfolded.com unmasking-truths.com www.unmasking-truths.com unraveling-insights.com www.unraveling-insights.com 
                unveil-secrets.com www.unveil-secrets.com reveal-hidden.com www.reveal-hidden.com reveal-insights.com www.reveal-insights.com 
                revelation-digger.com www.revelation-digger.com revelation-explorer.com www.revelation-explorer.com revelation-exposed.com www.revelation-exposed.com 
                revelation-insider.com www.revelation-insider.com revelations-unfolded.com www.revelations-unfolded.com secret-explorer.com www.secret-explorer.com 
                secrets-hidden.com www.secrets-hidden.com secrets-unearthed.com www.secrets-unearthed.com secrets-unlocker.com www.secrets-unlocker.com 
                secrets-unmasked.com www.secrets-unmasked.com truth-exposed.com www.truth-exposed.com truths-unlocker.com www.truths-unlocker.com 
                uncover-hidden.com www.uncover-hidden.com uncovering-truths.com www.uncovering-truths.com uncover-insights.com www.uncover-insights.com 
                breaking-secrets.com www.breaking-secrets.com disclose-insights.com www.disclose-insights.com disclosing-discoveries.com www.disclosing-discoveries.com 
                discovery-unlocker.com www.discovery-unlocker.com divulge-discoveries.com www.divulge-discoveries.com exposed-revelations.com www.exposed-revelations.com 
                exposing-truths.com www.exposing-truths.com hidden-discoveries.com www.hidden-discoveries.com hidden-unveiled.com www.hidden-unveiled.com 
                insights-disclosed.com www.insights-disclosed.com insights-unveiled.com www.insights-unveiled.com insight-unleasher.com www.insight-unleasher.com 
                mystery-revealer.com www.mystery-revealer.com newrealtrick.com www.newrealtrick.com unveil-revelations.com www.unveil-revelations.com 
                unraveling-mysteries.com www.unraveling-mysteries.com unraveling-secrets.com www.unraveling-secrets.com unveiling-hidden.com www.unveiling-hidden.com 
                unveiling-truths.com www.unveiling-truths.com;
    return 404; # managed by Certbot
}
