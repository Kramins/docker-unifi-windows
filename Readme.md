# Unifi Controller

Windows Container for Unifi Controller

## Usage
```bash
docker run 
-p 8080:8080  
-p 8081:8081 
-p 8443:8443 
-p 8843:8843 
-p 8880:8880 
-v D:/temp/unifi:c:/app/data 
--rm -it kramins/unifi`
```
## Reference
- [GitHub](https://github.com/Kramins/docker-unifi-windows)
- [Unifi Download](https://www.ubnt.com/download/unifi/)