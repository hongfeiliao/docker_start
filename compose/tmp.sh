docker run -d -p 3000:8080 \
--add-host=host.docker.internal:host-gateway \
-v open-webui:/app/backend/data \
--name open-webui \
--restart always ghcr.io/open-webui/open-webui:main



docker run -d -p 3000:8080 \
 --gpus all \
 --add-host=host.docker.internal:host-gateway \
 -v open-webui:/app/backend/data \
 --name open-webui \
 --restart always ghcr.io/open-webui/open-webui:cuda


docker run -d -p 58000:8000 -p 9443:9443 \
--name portainer --restart=always \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data portainer/portainer-ce:latest