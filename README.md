# Plain postgresql containerized

A simple docker container containing postgresql with a few pre-initialized tables and basic data persistence using volumes

## How To Run
Make sure docker is installed
1. Run 'docker-compose up' in terminal

- Data will be persisted as long as volumes responsible for it aren't removed
- Docker will automatically execute any '.sql' or '.sh' file in './migrations/' directory
- Script at './migrations/v0.001.sql' will initialize basic database structure
- Connect to localhost:5432 using any sql client or ORM
