$ErrorActionPreference = "Stop"
. .\build.config.ps1

$UNIFI_VERSION = $env:DOCKER_APPLICATION_VERSION

$imageFullName = ("{0}/{1}:{2}-windowsservercore" -f $env:DOCKER_REPO, $env:DOCKER_IMAGE, $UNIFI_VERSION)
$imageLatestName = ("{0}/{1}:latest" -f $env:DOCKER_REPO, $env:DOCKER_IMAGE)
Write-Host `Building $imageFullName`
docker build --build-arg UNIFI_VERSION=$UNIFI_VERSION . -t $imageFullName

Write-Host "Tagging image as latest"
docker tag $imageFullName  $imageLatestName