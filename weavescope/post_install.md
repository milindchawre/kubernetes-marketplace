## Using WeaveScope

### External Access

>**Note:** Do not expose the Scope service to the Internet, e.g. by changing the type to NodePort or LoadBalancer. Scope allows anyone with access to the user interface control over your hosts and containers.

Hence we use `kubectl port-forward` to expose WeaveScope UI.
```
kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040
```
Now access the WeaveScope UI at `http://localhost:4040`
