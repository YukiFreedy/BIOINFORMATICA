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
expresion <- c(10.5, 11.4, 5.2, 3.2, 9.3, 1.2, 4.2)
diagnostico <- factor(c("glioblastoma", "glioblastoma", "metastasis", "metastasis", "glioblastoma", "meningioma", "meningioma"))
# LO MISMO QUE FACTOR PERO AHORA EXISTEN VALORES PARA CADA UNO DE LOS COMPONENTES
corpus <- list(variable = expresion, clase = diagnostico)
# MOSTRAR SOLO LAS VARIABLES DE LA LISTA
corpus$variable
# LO MISMO DE ANTES, CON [[2]] MONSTRARIA LAS CLASES
corpus[[1]]
# IGUAL QUE corpus[[2]]
corpus$clase
# DE LAS CLASES, EL PRIMERO
corpus[[2]][1]
# TABLA DE DATOS DE 12 FILAS Y CUATRO COLUMNAS
frame2 <- data.frame(y1 = rnorm(12), y2 = rnorm(12), y3 = rnorm(12), y4 = rnorm(12))
# ASIGNACION DE NOMBRES A LAS FILAS
rownames(frame2) <- month.name[1:12]
# ASIGNACION DE NOMBRES A LAS COLUMNAS
names(frame2) <- c("y4", "y3", "y2", "y1")
dim(frame2)
# TABLA CON TODAS LAS FILAS PERO SOLO LAS COLUMNAS DE LA 2 A LA 4
data.frame(frame2[, 2:4])
# TABLA CON DOS COLUMNAS Y 5 FILAS
frame2[1:5, 1:2]
# SOLO LAS FILAS DE NOMBRE August
frame2["August", ]
# DATOS POR COLUMNAS DE LA TABLA AKA. MIN, QUA, MEAN, MEDIAN...
summary(frame2)
# MEDIA POR COLUMNAS
mean(frame2)
# CALCULA LA TABLA DE COORRELACIONES ENTRE LAS DISTINTAS COLUMNAS
cor(frame2)
x <- 1:10
x <- x[1:12]
frame3 <- data.frame(x, y = 12:1)
# LISTA DE BOOLEANS DONDE HAYA NA (NULL) EN X
is.na(x)
# LOS NA NO CUENTAN PARA EL COMPUTO
sapply(frame3, mean, na.rm = T)
apply(frame3, 1, mean, na.rm = T)
# CAMBIA LOS NA POR 0 EN LA PRIMERA COLUMNA
frame3[is.na(frame3), 1] <- 0
apply(frame3, 1, mean, na.rm = T)
# CREACION DE UNA FUNCION BASICA
funcionEjemplo <- function(argumento1, argumento2, argumento3 = 100.5){
	media <- mean(c(argumento1, argumento2, argumento3))
	mensaje <- paste("La media de: ", argumento1, ",\n\t", argumento2, "y ", argumento3, " es ", media)
	print(mensaje)
	return(media)
}
# LLAMADA A FUNCION + ASIGNACION DEL VALOR RETURNEADO
r <- funcionEjemplo(10, 50, 60)
r <- funcionEjemplo(10, 50)
r
# COMO ls
dir()
# SET WORK DIRECTORY
setwd("..")
# GET WORK DIRECTORY
getwd()
setwd("45IntroduccionByBioC")
x <- rnorm(10)
y <- 1:10
z <- 10:1
plot(x, y, main = "Main title", sub = "subtitle", xlab = "x-label", ylab = "y-label")
# col <- color lwd <- grosor pch <- forma
plot(x, y, type = "p", col = "red", lwd = 4, pch = 3)
# DIBUJA UNA LINEA HORIZONTAL
abline(h = 5, col = "brown")
# DIBUJA UNA LINEA HORIZONTAL
abline(v = 0, col = "brown")
# UNE LOS PUNTOS CON LINEAS lty <- discontinuedad de la linea
lines(x, y, lty = 2)
barplot(x)
plot(data.frame(col1 = x, col2 = y, col3 = z))
plot (x <- rnorm(40, 2e+07, sd = 1e+07), y <- rep(1, times = 40), type = "h", col = "blue",
	xaxt = "n", yaxt = "n", bty = "n")
abline(h = 0.78, col = "green", lwd = 12)
lines(a <- rnorm(5, 2e+07, sd = 1e+07), b <- rep(1, times = 5), type = "h", col = "red", lwd = 2)
pie(c(glio = 3, meta = 2, meni = 2, astro = 4), main = "Tumores")
jpeg("frecuenciaTumores.jpeg")
pie(c(glio = 3, meta = 2, meni = 2, astro = 4), main = "Tumores")
dev.off()

library(annotate)
library(geneplotter)
library("hgu95av2.db")
newChrom <- buildChromLocation("hgu95av2.db")
cPlot(newChrom)
data(sample.ExpressionSet)
cColor(featureNames(sample.ExpressionSet), "red", newChrom)
cPlot(newChrom, c("2"), fg = "yellow", scale = "relative")
cColor(featureNames(sample.ExpressionSet), "red", newChrom)
