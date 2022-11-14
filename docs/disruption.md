
### distruption budget

These settings define how many of your pods can be unavailable during Kubernetes updates that require the draining of nodes.

```yaml
# default settings

pdb:
  min: (1 less than the hpa minimum)
  max:
```

```yaml
# explanations

pdb:
  min: minimum number pods that must remain available
  max: maximum number of pods that are allowed to be unavailable
```
