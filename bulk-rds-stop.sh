#!/bin/bash


for id in ${DB_Instance_names[@]}; 
do
    echo "Stopping: ${id}" 
    aws rds stop-db-instance --db-instance-identifier ${id} --region ${Region}
done


for id in ${DB_Cluster_names[@]}; 
do
    echo "Stopping: ${id}" 
    aws rds stop-db-cluster --db-cluster-identifier ${id} --region ${Region}
done


