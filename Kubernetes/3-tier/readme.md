Step1- Create Database

Step2- Create Backend
      - in BE dir edit context.xml file( add rds-endpoint username and password also port no 3306 and database name as studentapp)
      - build docker image
      - push image to dockerhub
      - edit deployment.yaml
      - change docker image name
      - apply all files
      - access backend via svc link:8080/student/
      
Step3- Create Frontend
      - in FE dir edit index.html and add backend link 
      - build docker image and push to registry
      - edit deployment.yaml and apply changes
      - access frontend via svc link
      

   ![image](https://github.com/user-attachments/assets/21432a9b-8229-4ee8-8c48-21c2d54be50e)

