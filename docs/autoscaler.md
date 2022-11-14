
### autoscaler

These settings define how your pods will autoscale.

```yaml
# default settings

hpa:
  min: 1
  max: 1
  scale: '%' ('%', '#')
  cpu:
  memory: 
  down:
```

```yaml
# explanations

hpa:
  min: minimum number of pods
  max: maximum number of pods
  scale: autoscale based on ratio '%' (average percentage of pod requests) or value '#' (average resource value being used by pods)
  cpu: if ratio scale -> percentage of resource request usage to trigger scaling. if value scale -> number of millicores
  memory: if ratio scale -> percentage of resource request usage to trigger scaling. if value scale -> number of Megabytes
  down: the maximum number of pods that can autoscale down every minute. otherwise, pods decrease by at most 10% every minute.
```
