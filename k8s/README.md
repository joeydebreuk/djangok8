[source](https://medium.com/@markgituma/kubernetes-local-to-production-with-django-3-postgres-with-migrations-on-minikube-31f2baa8926e)


`minikube start`

`eval $(minikube docker-env)`

`kubectl apply -f k8s/postgres`

`kubectl apply -f k8s/django`



docker build -t joeydebreuk/autogit:001 .
docker push joeydebreuk/autogit:001


### copypasta
minikube delete
minikube start
eval $(minikube docker-env)
kubectl apply -f k8s/postgres
kubectl apply -f k8s/django
minikube service list
