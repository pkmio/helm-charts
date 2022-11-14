
### service

These settings set what ports to expose and other service configuration. If not defined, a service is not created.

```yaml
# default settings
svc:
  ports:
  - name: http
    port: 80
    targetPort: (the first containerPort of the first container or 80)
    appProtocol: http
  disable:
  type: 
  annotations:
  redirect:
```

```yaml
# explanations
svc:
  ports:
  - name: an arbitrary name, but it should be the protocol for the port, for example 'http'
    port: the port to expose
    targetPort: this port should match -> containers[*].ports[*].containerPort
    appProtocol: the protocol used on the target port
  disable: if true, a service will not be created
  type: can be set to NodePort or LoadBalancer, otherwise, defaults to ClusterIP
  annotations: annotations to add to the service
  redirect: if set to an internal k8s url, will redirect traffic to this other service
```
