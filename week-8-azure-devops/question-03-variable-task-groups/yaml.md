stages:
- stage: Dev
  variables:
    - name: deployEnv
      value: dev
- stage: Prod
  variables:
    - name: deployEnv
      value: prod
