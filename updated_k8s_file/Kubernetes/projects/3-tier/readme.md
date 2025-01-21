## $${\color{blue} \textbf {Guide to 3-tier architecture on Kubernetes}}$$

## Step 1: Create Database
1. Set up the database.
2. Ensure the database is accessible with the following details:
   - **Port**: 3306
   - **Database Name**: `studentapp`
   - Configure RDS endpoint, username, and password.

## Step 2: Create Backend
1. Navigate to the `BE` directory.
2. Edit the `context.xml` file:
   - Add the **RDS endpoint**, **username**, and **password**.
   - Ensure the **port** is `3306` and the **database name** is `studentapp`.
3. Build the Docker image for the backend:
   ```bash
   docker build -t <your-dockerhub-username>/backend:latest .
   ```
4. Push the image to Docker Hub:
   ```bash
   docker push <your-dockerhub-username>/backend:latest
   ```
5. Edit the `deployment.yaml` file:
   - Update the Docker image name to match your repository.
6. Apply all Kubernetes configuration files:
   ```bash
   kubectl apply -f deployment.yaml
   ```
7. Access the backend service via:
   ```
   <svc-link>:8080/student/
   ```

## Step 3: Create Frontend
1. Navigate to the `FE` directory.
2. Edit the `index.html` file:
   - Add the **backend link**.
3. Build the Docker image for the frontend:
   ```bash
   docker build -t <your-dockerhub-username>/frontend:latest .
   ```
4. Push the image to Docker Hub:
   ```bash
   docker push <your-dockerhub-username>/frontend:latest
   ```
5. Edit the `deployment.yaml` file:
   - Update the Docker image name to match your repository.
6. Apply all Kubernetes configuration files:
   ```bash
   kubectl apply -f deployment.yaml
   ```
7. Access the frontend service via:

   ![image](https://github.com/user-attachments/assets/21432a9b-8229-4ee8-8c48-21c2d54be50e)

