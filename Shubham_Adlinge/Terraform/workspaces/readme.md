## WOERKSPACES:
- workspace is an isolated environment used to manage infrastructure configurations in a way that allows multiple versions of the same infrastructure to be deployed in parallel, typically for different stages or environments, such as development, staging, and production.
- Each workspace has its own state file, meaning the infrastructure managed by each workspace is separate from others. 
- This allows you to safely work on different configurations or stages of infrastructure without affecting the others.

#### Key Points About Terraform Workspaces:

1. Default Workspace: When you initialize a Terraform project, you start in the default workspace (default). If you don't create additional workspaces, Terraform will use this default one.

2. Creating Workspaces: You can create new workspaces to separate your configurations:

```bash
terraform workspace new <workspace-name>
```
3. Switching Workspaces: To switch between workspaces, use:

```bash
terraform workspace select <workspace-name>
```
4. Listing Workspaces: You can view all the available workspaces in your Terraform configuration:
```bash
terraform workspace list
```
5. Delete the workspace:
- Once you’ve switched to a different workspace, you can delete the workspace you no longer need using the following command:

```bash
terraform workspace delete <workspace-name>
```


