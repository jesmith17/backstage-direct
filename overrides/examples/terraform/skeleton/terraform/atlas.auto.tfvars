cluster_name="${{ values.appName }}"
cloud_provider="AWS"
instance_size="${{values.instanceSize}}"
region="${{ values.region}}"
dbuser="${{ values.databaseUser}}"
dbuser_password = "${{ values.databasePass }}"
ip_address = "0.0.0.0"
