$location = Get-location
docker run --rm -it -v "$($location):/root" jairbj/ansible:latest "ansible-doc $($args -join ' ')"
