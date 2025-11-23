
## Example
yaml

```
metadata:
  name: myapp
  labels:
    app: test
    tier: backend
```

Key Points
metadata = parent section containing resource info.

name: myapp = unique name of the object.

labels = key-value pairs applied to the object (myapp).

name and labels are siblings under metadata.

app: test and tier: backend are children inside labels.

Purpose of Labels
Labels act like tags.

Used to organize resources.

Used by selectors (e.g., Services, Deployments) to find and group objects.

Example: Service selecting Pods via labels
yaml
```
selector:
  app: test
  tier: backend

```

This Service will target any Pod with those labels (e.g., myapp).




