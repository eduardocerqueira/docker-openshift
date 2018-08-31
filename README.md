# docker-openshift

tutorial docker to openshift

#### cmds

Docker
```
docker build -t eduardocerqueira/gunicorn-docker .
docker images | grep gunicorn
docker run -e GUNICORN_WORKERS=4 -e GUNICORN_ACCESSLOG=- -p 8000:8000 eduardocerqueira/gunicorn-docker
```

**Testing**

on docker
```
firefox http://127.0.0.1:8000/
```

locally
```
sh run.sh
firefox http://127.0.0.1:8080/
```

Openshift
```
oc login https://api.starter-us-east-1.openshift.com --token=*************
oc new-app https://github.com/eduardocerqueira/docker-openshift 
```

aux commands
```
oc delete all -l app=docker-openshift
```


REF: 

* https://fedoramagazine.org/experimenting-docker-openshift/
* https://sebest.github.io/post/protips-using-gunicorn-inside-a-docker-image/
