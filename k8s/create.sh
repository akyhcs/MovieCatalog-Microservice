kubectl create -f mysql-secret.yaml
kubectl create -f nm.json 
## declare an array variable
declare -a arr=("mysql-deployment.yaml" "rating-data-deployment.yaml" "movie-info-deployment.yaml" "movie-catalog-deployment.yaml")
## now loop through the above array
for i in "${arr[@]}"
do
   kubectl create -f $i -n movie
   # or do whatever with individual element of the array
done
# You can access them using echo "${arr[0]}", "${arr[1]}" also
