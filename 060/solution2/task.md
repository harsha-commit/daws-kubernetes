- Create an EKS Cluster and perform the following tasks
    - `eksctl create cluster --config-file=eks.yaml`
- Start Expense Project
    - Update db deployment with service to using db statefulset
    - Create backend deployment with service
    - Create frontend deployment with service
- Delete the EKS Cluster
    - `eksctl delete cluster --config-file=eks.yaml`

---

- Helm-ify the project