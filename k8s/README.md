[source](https://medium.com/@markgituma/kubernetes-local-to-production-with-django-3-postgres-with-migrations-on-minikube-31f2baa8926e)


`minikube start`

`eval $(minikube docker-env)`

`kubectl apply -f k8s/postgres`

`kubectl apply -f k8s/django`


### Update new build to deplyoment 
docker build -t joeydebreuk/autogit:latest .
docker push joeydebreuk/autogit:latest
kubectl rollout restart deployment/django


### open service in browser
minikube service django-service


### copypasta
minikube delete
minikube start
eval $(minikube docker-env)
kubectl apply -f k8s/postgres
kubectl apply -f k8s/django
minikube service list
