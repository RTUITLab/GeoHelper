# Geohelper

## [Unity part](https://github.com/RTUITLab/GeoHelperUnity)

## Create production stack files
1. Create `.env` file
    ```env
    # MUST HAVE
    GEOHELPER_FRONT=GeoHelper-Front
    GEOHELPER_BACK=GeoHelper-Back

    DB_USERNAME='mongo db username'
    DB_PASSWORD='mongo db password'
    DB_HOST='mongo db host'
    DB_DB_NAME='mongo db db name'

    APP_SECRET='secret key for JWT token'
    APP_USERNAME='app default user login'
    APP_PASSWORD='app default user password'

    APP_GOOGLE_API_KEY='google api key to work with maps'
    ```
    > [Google api key documentation](https://developers.google.com/maps/documentation/javascript/get-api-key)
2. Run command
    ```bash
    docker compose --env-file ./.env -f GeoHelper-Back/docker-compose.prod.yml -f GeoHelper-Front/docker-compose.prod.yml config > ./stack.yml
    ```
3. Use generated `stack.yml` on your docker swarm cluster
