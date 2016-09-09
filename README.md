ThreadFix is a software vulnerability aggregation and management system that helps organizations aggregate vulnerability data, generate virtual patches, and interact with software defect tracking systems.

1. Build the images: `scripts/build_images.sh`
2. `docker run -d -p 8443:8443 threadfix/web start`
3. Watch the logs and wait for startup: `docker logs `container_id`
3. Threadfix should now available on your local machine `https://127.0.0.1:8443/threadfix/`

This image should be used for testing purposes only. All data will be lost once the container is killed. 

Always remember to change the default UI credentials!
