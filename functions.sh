# remove all docker containers
removecontainers() {
    docker stop $(docker ps -aq)
    docker rm $(docker ps -aq)
}

# docker-mageddon
armageddon() {
    removecontainers
    docker network prune -f
    docker rmi -f $(docker images --filter dangling=true -qa)
    docker volume rm $(docker volume ls --filter dangling=true -q)
    docker rmi -f $(docker images -qa)
}

# Some commands to help lwfwifi not shit the bed
fixwifi() {
  sudo iw wlan0 set power_save off
  sudo iw reg set US
}
