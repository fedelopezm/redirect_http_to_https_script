#!/bin/bash

echo ".htaccess generator"

read -p "Enter the website address without the www. and .com:  " URL


touch ./.htaccess

echo "RewriteEngine On 
RewriteBase / 
RewriteCond %{HTTPS} !=on 
RewriteCond %{HTTP_HOST} ^$URL\.com$ [OR]
RewriteCond %{HTTP_HOST} ^www\.$URL\.com$ 
RewriteRule .* https://$URL.com%{REQUEST_URI} [R=301,L]" >> ./.htaccess

echo "The file was created on the actual folder with the .htaccess name"
echo "Upload this file on public_html and that's it"
