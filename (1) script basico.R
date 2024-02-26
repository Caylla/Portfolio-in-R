
# ---------------------------------------------------------
# Comandos básicos em R
# ---------------------------------------------------------

######################
# 1. Conceitos Básicos
######################


# Atribuição de variáveis
x <- 10
y <- 5

# Exibição de resultados
print(x)
print(y)

# Operações matemáticas
soma <- x + y
subtracao <- x - y
multiplicacao <- x * y
divisao <- x / y

# Exibição de resultados
print(soma)
print(subtracao)
print(multiplicacao)
print(divisao)

########################
# 2. Estruturas de Dados
########################

# Vetores
vetor <- c(1, 2, 3, 4, 5)
print(vetor)

# Matrizes
matriz <- matrix(1:9, nrow = 3, ncol = 3)
print(matriz)

# Dataframes
dataframe <- data.frame(Aluno = c("Eduardo", "Maria", "João"),
                        Nota_Matemática = c(8, 7, 9),
                        Nota_História = c(6, 8, 7))
print(dataframe)

############################
# 3. Estruturas de Controle
############################

# Condicional (if-else)
if (x > y) {
  print("x é maior que y")
} else {
  print("x não é maior que y")
}

# Loop (for)
for (i in 1:5) {
  print(paste("Número:", i))
}

############
# 4. Funções
############

# Definição de função
squared <- function(x) {
  return(x^2)
}

# Chamada de função
resultado <- squared(4)
print(resultado)


# Carregar o pacote necessário
library(ggplot2)

# ---------------------------------------------------------
# Criando gráficos simples
# ---------------------------------------------------------

#########################
# 5. Gráfico de dispersão
#########################

# Criar dados para o gráfico de dispersão
dados_dispersao <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 3, 5, 7, 11)
)

# Criar o gráfico de dispersão
ggplot(data = dados_dispersao, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Gráfico de Dispersão",
       x = "Eixo X",
       y = "Eixo Y")

######################
# 6. Gráfico de linhas
######################

# Criar dados para o gráfico de linhas
dados_linha <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(2, 4, 6, 8, 10)
)

# Criar o gráfico de linhas
ggplot(data = dados_linha, aes(x = x, y = y)) +
  geom_line() +
  labs(title = "Gráfico de Linhas",
       x = "Eixo X",
       y = "Eixo Y")

##############
#7. Histograma
##############

# Criar dados para o histograma
dados_histograma <- data.frame(
  valores = c(3, 5, 6, 7, 8, 4, 5, 6, 7, 8, 9, 4, 5, 6)
)

# Criar o histograma
ggplot(data = dados_histograma, aes(x = valores)) +
  geom_histogram(binwidth = 1, fill = "pink", color = "red") +
  labs(title = "Histograma",
       x = "Valores",
       y = "Frequência")

############
# 8. Boxplot
############

# Criar dados para o boxplot
dados_boxplot <- data.frame(
  grupo = rep(c("Rep1", "Rep2", "Rep3"), each = 50),
  valores = c(rnorm(50), rnorm(50, mean = 2), rnorm(50, mean = 1.5))
)

# Criar o boxplot
ggplot(data = dados_boxplot, aes(x = grupo, y = valores, fill = grupo)) +
  geom_boxplot() +
  labs(title = "Boxplot",
       x = "Grupo",
       y = "Valores")

############################
# 9. Atualizar sua versão R
############################

#Verificar qual sua versão  R 

sessionInfo()

#OU

version

#Instale o pacote "installr"

install.packages("installr")

#Irá aparecer opções para selecionar um servidor  para o download. Escolha um e clique em OK.Se não aparecer a atualização é automática.
#Execute a função updateR

installr::updateR()

#Aparecerá uma caixa de texto para confirmar a atualização, Clique em "sim" e depois "ok"



# Este projeto abrange os conceitos básicos de R, incluindo atribuição de variáveis, operações matemáticas, estruturas de dados (vetores, matrizes, dataframes) e visualização de dados usando ggplot2. Você pode executar este script linha por linha em seu ambiente R para experimentar e entender cada conceito.

