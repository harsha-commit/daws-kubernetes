- Create an EKS Cluster and perform the following tasks
    - `eksctl create cluster --config-file=eks.yaml`
- Perform the tasks
- Delete the EKS Cluster
    - `eksctl delete cluster --config-file=eks.yaml`

---

- Create IAM User
	- name = harish
- Create a Policy
	- Users should access only expense project cluster
		- service = EKS
		- Actions allowed > Read > DescribeCluster
		- Resources > Specific > Add ARNs > expense-cluster
		- Policy details
			- name = ExpenseEKSClusterDescribe
- Add this policy to harish
- Create expense k8s namespace
- Create RBAC Role and Rolebinding for accessing pods by harish
- Configure for using IAM Authentication for EKS (create aws-auth.yaml)

---

- Create an EC2 Instance and install kubectl
- Create access keys and login as harish, using aws configure
- Verify using `aws sts get-caller-identity`
- Connect kubectl to an EKS cluster by creating a kubeconfig file
	- `aws eks update-kubeconfig --region us-east-1 --name expense-1`
- `kubectl get nodes` -> this shouldn't work
- `kubectl get pods -n expense` -> this should work