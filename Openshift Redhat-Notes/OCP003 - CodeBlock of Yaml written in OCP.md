Original Code : 

```

apiVersion: apps/v1
kind: Deployment
metadata:
  name: mydeployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
        - name: mycontainer
          image: nginx
          ports:
            - containerPort: 80

```


```
YAML just removes `{ }`, `"` and uses **spaces** instead:

{
  "apiVersion": "apps/v1",
  "kind": "Deployment",
  "metadata": {
    "name": "mydeployment"
  },
  "spec": {
    "replicas": 3,
    "selector": {
      "matchLabels": {
        "app": "myapp"
      }
    },
    "template": {
      "metadata": {
        "labels": {
          "app": "myapp"
        }
      },
      "spec": {
        "containers": [
          {
            "name": "mycontainer",
            "image": "nginx",
            "ports": [
              {
                "containerPort": 80
              }
            ]
          }
        ]
      }
    }
  }
}

```