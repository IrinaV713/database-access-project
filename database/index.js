const dbConnection = require("../../access/connection");
const chalk = require("chalk");

(async () => {
  try {
    await dbConnection.authenticate();
    console.log(chalk.green("Connection to database has been established successfully."));
    process.exit(0);
  } catch (error) {
    console.log(chalk.red("Database connection has not established!"));
    process.exit(0);
  }
})();
