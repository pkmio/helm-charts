
### functions

If `function` field is set, then a Keda ScaledObject will be deployed instead of a deployment.

```yaml
# default settings
function:
  min: 0
  max: 10
  cool: 300
  poll: 5
  triggers: []
```

```yaml
# explanation
function:
  min: minimum pods to scale to, must be 0 or greater
  max: maximum pods to scale to, must be equal to or greater than min
  cool: amount of time from last Keda action before a scale to zero is allowed, must be less than 6000
  poll: how frequently to check the scaler in seconds, must be 2 or greater 
  triggers:
  - type: the scaler type, a list can be found here -> https://keda.sh/docs/2.0/scalers/
    metadata:
      # metadata configures the scaler. fields are dependent on the scaler type. 
      # look at the Keda docs -> https://keda.sh/docs/2.0/scalers/
      # the following is an example for the "rabbitmq" scaler
      hostFromEnv: RABBITMQ_HOST
      protocol: http
      queueLength: '10'
      queueName: somequeue
```
