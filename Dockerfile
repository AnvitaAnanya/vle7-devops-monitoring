FROM nginx:alpine
RUN printf '<html><body><h1>VLE-7 DevOps Pipeline</h1><p>Deployed by Jenkins to Kubernetes.</p></body></html>\n' > /usr/share/nginx/html/index.html
EXPOSE 80
