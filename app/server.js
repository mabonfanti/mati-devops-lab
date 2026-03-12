const express = require("express");
const os = require("os");

const app = express();
const port = 3000;

const version = process.env.APP_VERSION || "dev";

app.use(express.static("public"));

app.get("/info", (req, res) => {
  res.json({
    message: "Welcome to Mati's DevOps Lab",
    hostname: os.hostname(),
    version: version
  });
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});