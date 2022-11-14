
### access control

These settings give your pod's service account permissions to act on other kubernetes resources.

```yaml
# default settings

rbac:
- apiGroups:
  - ...
  resources:
  - ...
  verbs:
  - ...
```

```yaml
# explanations

rbac:
- apiGroups: array of apiGroups for this RBAC rule
  resources: array of resources for this RBAC rule
  verbs: array of verbs for this RBAC rule
```
