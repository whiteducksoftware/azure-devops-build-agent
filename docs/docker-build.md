```yaml
pool: my-pool

trigger:
  branches:
    include:
    - master
    - main

variables:
  DOCKER_BUILDKIT: 1

stages:
- stage: build

  jobs:
  - job: build
    displayName: build

    steps:
    - task: Docker@2
      displayName: build
      inputs:
        command: build
        repository: my-image
        tags: $(Build.BuildId) # Azure build variable
```