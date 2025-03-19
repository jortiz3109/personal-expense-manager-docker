# Docker Integration for simple expense manager project

## Installation

### Initial Steps

1. **Prepare the Environment**
   - Create a directory on your system to store all project repositories.
   - Navigate to the newly created directory.

2. **Clone Repositories**
   - Clone the [personal-expense-manager-api](https://github.com/jortiz3109/personal-expense-manager-api) repository by running:
     ```bash
     git clone https://github.com/jortiz3109/personal-expense-manager-api.git
     ```
   - Clone this Docker integration repository by running:
     ```bash
     git clone https://github.com/jortiz3109/personal-expense-manager-docker.git
     ```
   - Navigate to the directory of the cloned Docker integration repository.

3. **Configure Environment Variables**
   - Copy the example configuration file `.env.example` to a new file `.env` by running:
     ```bash
     cp .env.example .env
     ```
   - Open the `.env` file in your favorite text editor and modify the `API_PATH` and `WEB_PATH` variables. Set these variables to the local paths of the `personal-expense-manager-api` repository you cloned in step 2. For example:
     ```env
     API_PATH=/path/to/personal-expense-manager-api
     ```
   - Also fill the values for `DB_USERNAME`, `DB_DATABASE` and `DB_PASSWORD` variables

4. **Start the Application**
   - Bring up the Docker containers with the following command:
     ```bash
     docker compose up -d
     ```

5. **Access the Application**
   - Open your web browser and go to the application at the following URL: http://localhost:8080/
