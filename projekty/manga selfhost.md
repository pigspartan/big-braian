pierwsza wersja favita configu 

```
services:
    kavita:
        image: jvmilazz0/kavita:latest    # Using the stable branch from the offical repo.
        container_name: kavita
        volumes:
            - \\F\Manga\manga            # Manga is just an example you can have the name you want. See the following       #
            - \\F\Manga\manga\kavita\config     # Change './data if you want to have the config files in a different place.
                                        # /kavita/config must not be changed
        environment:
            - TZ=Your/Timezone
        ports:
            - "5001:5000" # Change the public port (the first 5000) if you have conflicts with other services
        restart: unless-stopped
```