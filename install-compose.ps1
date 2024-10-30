# Display an ASCII banner
Write-Output @"
    ______    _______   _______  ___        __     ___  ___  
   /    " \  /"     "| /"     "||"  |      |" \   |"  \/"  | 
  // ____  \(: ______)(: ______)||  |      ||  |   \   \  /  
 /  /    ) :)\/    |   \/    |  |:  |      |:  |    \\  \/   
(: (____/ // // ___)   // ___)   \  |___   |.  |    /\.  \   
 \        / (:  (     (:  (     ( \_|:  \  /\  |\  /  \   \  
  \"_____/   \__/      \__/      \_______)(__\_|_)|___/\___| 
                                                             
"@ 
# Define a function to prompt the user for each service
function Start-Service {
    param (
        [string]$ServiceName,
        [string]$YamlFile
    )

    # Prompt the user
    $response = Read-Host "Do you want to start/install $ServiceName? (yes/no)"
    if ($response -eq "yes") {
        Write-Output "Starting $ServiceName... 🚀"
        docker-compose -f $YamlFile up -d
        if ($?) {
            Write-Output "$ServiceName is up and running! 🎉"
        } else {
            Write-Output "Failed to start $ServiceName. Please check $YamlFile and try again. ❗"
        }
    } else {
        Write-Output "$ServiceName will not be started."
    }
}

# Prompt the user for each YAML file
Start-Service -ServiceName "MySQL" -YamlFile "mysql/mysql-compose.yaml"
Start-Service -ServiceName "MongoDB" -YamlFile "mongodb/mongo-compose.yaml"
Start-Service -ServiceName "Kafka" -YamlFile "kafka/kafka-compose.yaml"

# Final message
Write-Output "All selected services have been processed."
Write-Output "To stop any running services, use: docker-compose down"
