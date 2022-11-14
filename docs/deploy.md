
### deploy

```yaml
# default settings

deploy:
  wait: 10
  strategy: RollingUpdate ('RollingUpdate', 'Recreate')
```

```yaml
# explanation

deploy:
  wait: number of seconds to wait for passing health checks before the pod is marked as ready on deployments
  strategy: the update strategy for deployments, default strategy pushes pods to between 100% - 110% of desired count while upgrading for zero downtime
```
