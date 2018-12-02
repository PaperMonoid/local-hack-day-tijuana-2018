CREATE TABLE Usuario(
       Curp CHAR(16),
       Ine CHAR(10),
       Nombres VARCHAR(32),
       Apellidos VARCHAR(64),
       PRIMARY KEY(Curp, Ine)
);

CREATE TABLE IdCategoriaConsulta(
       IdCategoriaConsulta INT IDENTITY(1,1),
       Descripcion VARCHAR(64),
       PRIMARY KEY(IdCategoriaConsulta)
);

CREATE TABLE Consulta(
       IdConsulta INT IDENTITY(1,1),
       IdCategoriaConsulta INT,
       Descripcion VARCHAR(420),
       Imagen VARCHAR(420),
       Titulo VARCHAR(32)
       PRIMARY KEY(IdConsulta),
       CONSTRAINT FK_Categoria FOREIGN KEY (IdCategoriaConsulta) REFERENCES CategoriaConsulta(IdCategoriaConsulta)
);

CREATE TABLE ConsultaObjetivos(
       IdConsultaObjetivos INT IDENTITY(1,1),
       IdConsulta INT,
       Descripcion VARCHAR(420)
       CONSTRAINT FK_Consulta2 FOREIGN KEY (IdConsulta) REFERENCES Consulta(IdConsulta)
);

CREATE TABLE Pregunta(
       IdPregunta INT IDENTITY(1,1),
       IdConsulta INT,
       Descripcion VARCHAR(420),
       PRIMARY KEY IdPregunta(IdPregunta),
       CONSTRAINT FK_Consulta FOREIGN KEY (IdConsulta) REFERENCES Consulta(IdConsulta)
);

CREATE TABLE Respuesta(
       IdRespuesta INT IDENTITY(1,1),
       IdPregunta INT,
       Respuesta CHAR,
       Hash CHAR(64),
       PRIMARY KEY IdRespuesta,
       CONSTRAINT FK_Pregunta FOREIGN KEY (IdPregunta) REFERENCES Pregunta(IdPregunta)
);
