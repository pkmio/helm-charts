
### environment variables

Environment variables are passed to the containers using config maps and secrets.

```yaml
# default settings

variables:
- name: 
  store: encrypted ('plaintext', 'external', 'encrypted')
  data:
```

```yaml
# explanations

variables:
- name: an arbitrary name
  store: 'plaintext' -> configmap, 'external' -> name of premade secret, anything else -> secret
  data: a map of environment variables and values
```
