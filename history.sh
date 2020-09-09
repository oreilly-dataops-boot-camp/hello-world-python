 2630  docker build -t albertoimpl/myapp . -f Dockerfile
 2631  clear
 2632  docker run -p 5000:5000 albertoimpl/myapp
 2633* curl localhost:5000
 2634* docker ps
 2635  docker images
 2636  clear
 2637  rm Dockerfile
 2638  ls
 2639  pack set-default-builder gcr.io/buildpacks/builder:v1
 2640  pack build albertoimpl/myapp
 2641  clear
 2642  docker images
 2643  docker run -p 5000:5000 albertoimpl/myapp
 2644* curl localhost:5000
 2645  docker push albertoimpl/myapp
 2646  clear
 2647  docker images
 2648  k get nodes
 2649  k get namespaces
 2650  k get pods -n=kube-system
 2651  k get pods
 2652  kubens
 2653  kubens kube-system
 2654  k get pods
 2655  kubens default
 2656  clear
 2657  k apply -f k8s/pod.yaml
 2658  k get pods
 2659  k get pods --watch
 2660  k logs myapp
 2661  k describe pod myapp
 2662  clear
 2663  k apply -f k8s/service.yaml
 2664  k get services
 2665  k port-forward myapp 5000:5000
 2666* curl localhost:5000
 2667  clear
 2668  k get pods
 2669  k delete pod myapp
 2670  k get pods
 2671  k apply -f k8s/replicaset.yaml
 2672* watch kubectl get pods,replicasets
 2673  k delete pod/myapp-jhbxb
 2674  k delete replicaset.apps/myapp
 2675* watch kubectl get pods,replicasets,deployments
 2676  k apply -f k8s/deployment.yaml
 2677  k delete deployment.apps/myapp
 2678  k apply -f k8s/configmap.yaml
 2679  k apply -f k8s/deployment.yaml
 2680  k get pods
 2681  k describe pod myapp-55cd4cf445-tsj57
 2682  clear
 2683  k get pods
 2684  k exec myapp-55cd4cf445-8dpc6 -it sh
 2685  k get deployments
 2686  k delete deployments.apps myapp
 2687  k apply -f k8s/configmapmount.yaml
 2688  k apply -f k8s/deployment.yaml
 2689  k get pods
 2690  k get pods --watch
 2691  k describe pod myapp-664cdb8d78-fd5mj
 2692  k get pods
 2693  clear
 2694  k exec myapp-664cdb8d78-fd5mj -it sh
 2695  echo -n 'supersecret' | base64
 2696  k get deployments.apps
 2697  k delete deployments.apps myapp
 2698  k apply -f k8s/secret.yaml
 2699  k apply -f k8s/deployment.yaml
 2700  k get pods
 2701  clear
 2702  k describe pod myapp-dd65b9bb9-hlxzw
 2703  clear
 2704  k get pods
 2705  k exec myapp-dd65b9bb9-44h5l -it sh
 2706  git st
 2707  git add k8s/*
 2708  git st
 2709  git co -b deploying-apis
 2710  git push origin deploying-apis
 2711  git st
 2712  git ci -m "Adding showcased manifests"
 2713  git push origin deploying-apis
