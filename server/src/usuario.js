import bd from "./bd";

async function obtener(curp, ine) {
  const sql = await bd();
  const resultado = await sql.query(
    `SELECT * FROM Usuario WHERE Curp='${curp}' AND Ine='${ine}'`
  );
  sql.close();
  return resultado;
}

async function crear(usuario) {
  const sql = await bd();
  const resultado = await sql.query(
    `INSERT INTO Usuario(Curp, Ine, Nombres, Apellidos) VALUES('${
      usuario.curp
    }', '${usuario.ine}', '${usuario.nombres}', '${usuario.apellidos}');`
  );
  sql.close();
}

export { crear, obtener };
