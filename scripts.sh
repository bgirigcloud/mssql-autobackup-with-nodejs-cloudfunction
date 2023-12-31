Warning: You must assign the Invoker role (roles/run.invoker) through Cloud Run for 2nd gen functions if you want to allow the function to receive requests from additional principals or other given authorities in IAM.
Note: if you want to achieve the equivalent of assigning the Cloud Functions "Admin" or "Developer" role to a 1st gen function, you need to assign Cloud Functions "Admin" or "Developer" to the 2nd gen function and assign "Cloud Run Invoker" to the Cloud Run service.
$ gcloud functions add-iam-policy-binding demo-mssql-auto-bkp \
    --region="us-central1" \
    --member="serviceAccount:demo-for-sql-auto-bkp@kinetic-object-400913.iam.gserviceaccount.com" \
    --role="roles/cloudfunctions.invoker"

 gcloud functions add-iam-policy-binding demo-mssql-auto-bkp \
    --region="us-central1" \
    --member="serviceAccount:demo-for-sql-auto-bkp@kinetic-object-400913.iam.gserviceaccount.com" \
    --role="roles/storage.admin"

    gcloud functions add-iam-policy-binding demo-mssql-auto-bkp \
    --region="us-central1" \
    --member="serviceAccount:demo-for-sql-auto-bkp@kinetic-object-400913.iam.gserviceaccount.com" \
    --role="roles/storage.admin"


    
gsutil acl ch -u ${SA_NAME}:W gs://kinetic-object-400913-sql-backup
