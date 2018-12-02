import sql from "mssql";

async function conexion(args) {
  await sql.connect(
    `mssql://${process.env.MI_VOTO_CIUDADANO_USER}:${
      process.env.MI_VOTO_CIUDADANO_PASSWORD
    }@${process.env.MI_VOTO_CIUDADANO_SERVER}/${
      process.env.MI_VOTO_CIUDADANO_DATABASE
    }?encrypt=true`
  );
  return sql;
}

export default conexion;
