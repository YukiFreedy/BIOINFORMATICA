# ASIGNACION NUMERICA
v1 <- 10.56
# ASIGNACION + GENERACION RANDOM - NORMAL DISTRIBUTION - 
v2 <- 3 + rnorm(1)
# ASIGNACION VECTORIAL
vector1 <- c(-2, -2, -2)
# ASIGNACION MATRICIAL
matriz1 <- matrix(c(v1, v2, 3, 4, 5, 6), nrow = 2, ncol = 3)
# ASIGNACION A UN LUGAR EXACTO DE LA MATRIZ
matriz1[1, 3] <- -1
# ASIGNACION A UNA FILA DE LA MATRIZ
matriz1[2, ] <- vector1
# LISTA TODAS LAS VARIABLES DISPONIBLES
ls()
# LISTA LAS VARIABLES QUE CONTENGAN LA CADENA pat
ls(pat = "v")
# LISTA CON SU CONTENIDO LAS VARIABLES DISPONIBLES
ls.str()
# ELIMINA UNA VARIABLE DE MEMORIA
rm(v1)
ls()
# ELIMINA LA LISTA DE VARIABLES QUE CONTENGAN LA CADENA pat
rm(list = ls(pat = "v"))
# LLAMA AL RECOLECTOR DE BASURA
gc()
ls()
# LEE Y ASIGNA EN FORMA DE TABLA VALORES DE UN FICHERO
frame1 <- read.table(file = "datosPrueba.txt")
# COGE DE LA FILA 1 A LA 3 Y LAS COLUMNAS 1 A LA 10
frame2 <- frame1[1:3, 1:10]
# CREA UN ARCHIVO EN EL QUE GUARDA LA TABLA frame2
write.table(frame2, file = "datosReducido.txt", sep = " ", row.names = FALSE, col.names = FALSE)
# MUESTRA EN UNA NUEVA VENTANA EL CONTENIDO DEL ARCHIVO
file.show("datosReducido.txt")
x <- c(1.1, 2.3, 3.3, 4.4, 5.5, 6.6, 7.7)
# MUESTRA EL CONTENIDO EN LA POSICION 2 -NO HAY POSICION 0!- 
x[2]
# MUESTRA EL RANGO DE VALORES CORRESPONDIENTE
x[2:3]
# MUESTRA EL CONTENIDO MENOS EL DE LA POSICION DADA
x[-2]
# CREA UN VECTOR5 TOMANDO VALORES AL AZAR DEL VECTOR DADO -DESORDENADO-
sample(x, 5)
# ORDENA 100 VALORES DE GENERADOS DE UNA DISTRIBUCION NORMAL ENTRE EL 1 Y EL 5
sort(runif(100, min = 1, max = 5))
# CREA UN VECTOR EL CUAL TIENE DE VALORES DEL 1 HASTA EL 10 DOS VECES
x <- rep(1:10, times = 2)
# [1]  1  2  3  4  5  6  7  8  9 10  1  2  3  4  5  6  7  8  9 10
x
# DEVUELVE UN VECTOR CON VALORES UNICOS SACADOS DE OTRO
unique(x)
# GENERA UNA TABLA CONVIERTENDO LOS VALORES A INTEGER
x <- as.integer(runif(100, min = 1, max = 5))
# GENERA UNA TABLA CONVIERTIENDO LOS VALORES A CHARACTER
xc <- as.character(x)
# DE CHARACTER A NUMBER
xn <- as.numeric(xc)
x <- as.integer(runif(100, min = 1, max = 5))
# REMPLAZA TODAS LAS OCURRENCIAS DE 1 CON "A" Y ADEMAS CAMBIA TODO A CHARACTER
x[x == 1] <- "A"
# NO SALTA ERROR INCLUSO SI AHORA LOS 2 SON CHAR
x[x == 2] <- "T"
x[x == 3] <- "G"
x[x == 4] <- "C"
# CONVIERTE A STRING LOS CONTENIDOS DE x
paste(x, sep = "", collapse = "")
# DEVUELVE UNA LISTA DE TODAS LAS LETRAS MINUSCULAS
letters
# DEVUELVE UNA LISTA DE BOOLEANS DONDE SE CUMPLA QUE LA LETRA ES "c"
letters == "c"
# POSICIONES DONDE EXISTE "c" EN UNA LISTA REPETIDA DOS VECES DE letters {3 29}
which(rep(letters, 2) == "c")
# DEVUELVE LAS POSICIONES DE LAS PRIMERAS OCURRECIAS DE c Y g
match(c("c", "g"), letters)
x <- rep(1:10, 2)
y <- c(2, 4, 6)
# DEVUELVE UNA LISTA DE BOOLEANS DONDE COMPRUEBA SI CADA COMPONENTE DE X ESTA EN Y
x %in% y
# DEVUELVE LA LISTA INTERSECCION DE DOS VECTORES / TABLAS
intersect(month.name[1:4], month.name[3:7])
# DEVUELVE LA RESTA DE DOS VECTORES (los objectos de la iz que no esten en la der no estan en el resultado)
setdiff(month.name[1:4], month.name[3:7])
# DEVUELVE LA UNION DE DOS VECTORES
union(month.name[1:4], month.name[3:7])
x <- c(month.name[1:4], month.name[3:7])
# duplicated -> lista de bools de los componentes duplicados
# cuando x[vector de bools] devuelve los componentes donde el bool es true
x[duplicated(x)]
unique(x)
# FACTOR CREA UNA AGRUPACACION DE VALORES, LEVELS INCLUYE LOS DIFERENTES COMPONENTES
diagnostico <- factor(c("glioblastoma", "glioblastoma", "metastasis", "metastasis", "glioblastoma", "meningioma", "meningioma"))
diagnostico
# CREAR UNA TABLA DE UN FACTOR TE DA LA CANTIDAD DE CADA COMPONENTE EN FORMA DE TABLA
diagnosticofr <- table(diagnostico)
diagnosticofr
expresion <- c(10.5, 11.4, 5.2, 3.2, 9.3, 1.2, 4.2)
# EXPRESION <- VALORES / DIAGONISTICO <- FACTOR / MEAN <- MEDIA
tapply(expresion, diagnostico, mean)
# byrow ESPECIFICA SI LA CUENTA VA DE ARRIBA A ABAJO O DE IZQUIERDA A DERECHA
x <- matrix(1:30, 3, 10, byrow = T)
x <- matrix(1:30, 10, 3, byrow = F)
# DE LA COLUMNA 3, LOS 5 PRIMEROS VALORES
x[c(1:5), 3]
mean(x[c(1:5), 3])
x[9, 2] <- 50
# DIMENSIONES DE x
dim(x)
# CAMBIA LAS DIMENSIONES DE LA TABLA GENERANDO DOS TABLAS
dim(x) <- c(3, 5, 2)