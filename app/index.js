const models = require("../../access/structures");
const table = require("cli-table3");
const lnode = require("lodash-node");
const chalk = require("chalk");

const toTable = (data, ...fields) => {
  const result = new table({
    head: fields.map((f) => lnode.last(f.split("."))),
  });
  data.forEach((item) => {
    const d = [];
    fields.forEach((field) => {
      d.push(lnode.get(item, field) || " ");
    });
    result.push(d);
  });
  return result.toString();
};

(async () => {
  const accountsList = await models.Account.findAll();
  console.log(chalk.green("Accounts list"));
  console.log(
    toTable(
      accountsList,
      "role",
      "email",
      "login",
      "password",
      "state"
    )
  );
  const accessList = await models.Access.findAll({
    include: [
      {
        model: models.Account,
        through: {
          attributes: ["role"],
        },
      },
    ],
  });
  console.log(chalk.green("Accesses List"));
  console.log(
    accessList
      .map(
        (access) => `Access: ${access.role}
${toTable(access.Account, "role", "Access.dataValues.role")}`
      )
      .join("\n")
  );
})();
