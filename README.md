# Geohelper

## [Unity part](https://github.com/RTUITLab/GeoHelperUnity)

## Create production stack files

1. Create `.env` file
    ```env
    DB_USERNAME=mongo_db_username
    DB_PASSWORD=mongo_db_password
    DB_HOST=mongo_db_host
    DB_DB_NAME=mongo_db_db_name

    APP_SECRET=secret key for JWT token
    APP_USERNAME=app default user login
    APP_PASSWORD=app default user password

    APP_GOOGLE_API_KEY=google api key to work with maps
    ```
    > [Google api key documentation](https://developers.google.com/maps/documentation/javascript/get-api-key)
2. Run powershell script
    ```bash
    ./generateProd.ps1
    ```
3. Use generated `stack.yml` on your docker swarm cluster