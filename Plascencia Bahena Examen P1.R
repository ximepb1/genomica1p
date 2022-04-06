# Leer la tabla

tabla <- read.delim("ExperimentoDesconocido.top.table.tsv", head = T)
tabla
datos <- tabla [,c(-1,-7,-8)]

# (2%) Haga un boxplot de expresión.

library("viridis")
library("pheatmap")

boxplot(datos$logFC, col=viridis(5))


# (2%) Encuentre las sondas que se sobre expresan y sub expresan.
#Crear un nuevo objeto con los valores normalizados

library(BiocManager)
library(affy)
library(BiocGenerics)
library(stats4)
library(IRanges)
library(S4Vectors)
library(AnnotationDbi)
library(pvclust)
library(vsn)
library(limma)

#para saber que genes estan sobre y subexpresados nos basamos en el LogFC
#ademas de asiganar un valor de p significativo
sobre <- subset(tabla, tabla$logFC>1.5)
sobre <- subset (sobre, tabla$P.Value<=0.05)

sub<-subset(tabla, tabla$logFC<(-1.5))
sub <- subset (sub, tabla$P.Value<=0.05)


  # (2%) Cuente cuántas sondas se sobre expresan y cuántas se sub expresan.
sobre #634
sub
# (2%)Genera una figura de volcán manualmente, que incluya todas las sondas.
# (12%) Realiza un análisis de GO para las tres ontologías para los genes diferencialmente expresados. Genera gráficas y/o tablas de las categorías sobre o sub expresadas. A partir de este resultado elabora una hipótesis de lo que podría tratar el experimento
