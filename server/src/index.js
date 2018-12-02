import "@babel/polyfill";
import express from "express";
import cors from "cors";

const app = express();
app.use(cors());
const port = process.env.PORT || 1337;

app.get("/consultas", (req, res) => {
  res.setHeader("Content-Type", "application/json");
  res.send(require("./consultas.json"));
});

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(port, () =>
  console.log(`La aplicación está ejecutando en el puerto ${port}!`)
);
