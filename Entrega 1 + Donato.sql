/*************************
Creacion Base de Datos
*************************/
CREATE SCHEMA IF NOT EXISTS fumadores;
USE fumadores;

/*************************
Creacion de Tablas
*************************/

-- Table: fumadores
CREATE TABLE fumadores (
	id_fumadores INT UNSIGNED NOT NULL,
    fumadores_totales INT UNSIGNED NOT NULL,
    no_fum_exp_humo INT UNSIGNED NOT NULL,
    PRIMARY KEY (fumadores_totales)
);	


-- Table: sexo
CREATE TABLE sexo (
	id_sexo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    fumadores_totales INT UNSIGNED NOT NULL,
    hombres_fumadores INT UNSIGNED NOT NULL,
    mujeres_fumadores INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_sexo),
    FOREIGN KEY (fumadores_totales) REFERENCES fumadores(fumadores_totales)
);	


-- Table: edades
CREATE TABLE edades (
	id_edades INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_sexo INT UNSIGNED NOT NULL,
    edades_fumadores INT UNSIGNED NOT NULL,
    ed_no_fum_exp INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_edades),
    FOREIGN KEY (id_sexo) REFERENCES sexo(id_sexo)
);	


-- Table: edad_de_inicio
CREATE TABLE edad_de_inicio (
	id_edad_de_inicio INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_sexo INT UNSIGNED NOT NULL,
    nivel_educ VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_edad_de_inicio),
    FOREIGN KEY (id_sexo) REFERENCES sexo(id_sexo)
);	


-- Table: ex_fumadores
CREATE TABLE ex_fumadores (
	id_ex_fumadores INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_edad_de_inicio INT UNSIGNED NOT NULL,
    cantidad_total INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_ex_fumadores ),
    FOREIGN KEY (id_edad_de_inicio) REFERENCES edad_de_inicio(id_edad_de_inicio)
);	


