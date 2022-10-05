http://44.211.19.123:8080/github-webhook/

WebHook added to the repo for push event

nexus default credentials admin admin123 

Docker permission Quick Fix:

Run the command as root using sudo.

sudo docker ps
Change the permissions of /var/run/docker.sock for the current user.

sudo chown $USER /var/run/docker.sock
Caution: Running sudo chmod 777 /var/run/docker.sock will solve your problem but it will open the docker socket for everyone which is a security vulnerability as pointed out by @AaylaSecura. Hence it shouldn't be used, except for testing purposes on the local system.

Permanent Solution:

Add the current user to the docker group: sudo usermod -a -G docker $USER