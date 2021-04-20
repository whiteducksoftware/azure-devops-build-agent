```yaml
pool: my-pool

trigger:
  branches:
    include:
    - master
    - main

stages:
- stage: build

  jobs:
  - job: build
    displayName: build
    container:
      image: ubuntu:20.04

    steps:
    - task: Bash@3
      displayName: echo
      inputs:
        targetType: 'inline'
        script: echo "hello duck"
```