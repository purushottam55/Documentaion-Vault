# Indetation of Openshift 

# General YAML Syntax Rules (OpenShift)

- OpenShift manifests are YAML files → so YAML basics apply

```

## Indentation
- Use **spaces only** (no tabs)
- Convention: 2 spaces per level

## Key-Value pairs
key: value

## Lists (arrays)
items:
  - apple
  - banana
  - cherry

## Nested structures
metadata:
  name: myapp
  labels:
    app: test
    tier: backend
    
    
```      aslo see more info [[T-OCP-OO2 know syntax for lables and metadata]]
```
SEE MORE  => [[OCP002 YAML Metadata & Labels in OpenShift]]
View code block example from where to where scope of the code is [[OCP003 - CodeBlock of Yaml written in OCP]]
