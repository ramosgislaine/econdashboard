### Dados para o Econ Dashboard ###


# 1. PACKAGES ----------------------------------------------------------------


library(BETS)


# 2. SERIES ------------------------------------------------------------------


# 2.1 Brasil -----------------------------------------------------------------


# PIB em US$ tri ----
PIB = BETSget(7324, data.frame = TRUE)

# taxas de variação anual ----
PIBvar = BETSget(7326, data.frame = TRUE)
PIBvarA = BETSget(7327, data.frame = TRUE) # agropecuaria
PIBvarI = BETSget(7328, data.frame = TRUE) # industria
PIBvarS = BETSget(7329, data.frame = TRUE) # serviços

# PIB trimestral em índice
PIBtriobs = BETSget(22099, data.frame = TRUE)

# PIB trimestral dessazonalizado em índice ----
PIBtri = BETSget(22109, data.frame = TRUE)
PIBtriA = BETSget(22105, data.frame = TRUE) # agropecuaria
PIBtriI = BETSget(22106, data.frame = TRUE) # industria
PIBtriS = BETSget(22107, data.frame = TRUE) # servicos
PIBtriF = BETSget(22110, data.frame = TRUE) # consumo das famílias
PIBtriG = BETSget(22111, data.frame = TRUE) # consumo do governo

# IBC-Br trimestral ----
IBCBr = BETSget(24363, data.frame = TRUE)
IBCBrs = BETSget(24364, data.frame = TRUE)

# Serviços e Comércio ----
Varejos = BETSget(28473, data.frame = TRUE) # índice volume de vendas no varejo dessazonalizado
Varejo = BETSget(1455, data.frame = TRUE) # índice volume de vendas no varejo
Servicos = BETSget(21637, data.frame = TRUE) # índice receita nominal de serviços
ICC = BETSget(4393, data.frame = TRUE) # índice confiança do consumidor
ICE = BETSget(4394, data.frame = TRUE) # índice de condições econômicas atuais
IEF = BETSget(4395, data.frame = TRUE) # índice de expectativas futuras
ExpBR = BETSget(22708, data.frame = TRUE) # exportação de bens free on board

# Mercado de trabalho ----
Emprego = BETSget(25239, data.frame = TRUE) # índice de emprego formal
Empregos = BETSget(28512, data.frame = TRUE) # índice de emprego dessazonalizado
Desemprego = BETSget(24369, data.frame = TRUE) # taxa de desemprego
DesempregoSE = BETSget(28565, data.frame = TRUE) # taxa de desemprego, região sudeste

# Renda ----
Renda = BETSget(24382, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - PNADC
RendaC = BETSget(24383, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - carteira
RendaSC = BETSget(24384, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - sem carteira
RendaPriv = BETSget(24385, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - setor privado
RendaPub = BETSget(24386, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - setor publico
RendaCP = BETSget(24387, data.frame = TRUE) # rendimento médio real habitual das pessoas ocupadas - conta própia

# Preços ----
IPCA = BETSget(433, data.frame = TRUE, from = "1995-01-01") # Indice nacional de Preços ao consumidor-Amplo IBGE
IGPM = BETSget(189, data.frame = TRUE, from = "1995-01-01") # Indice Geral de Preços do Mercado FGV
IPCBr = BETSget(191, data.frame = TRUE, from = "1995-01-01") # Indice de Precos ao Consumidor-Brasil FGV
ICV = BETSget(194, data.frame = TRUE, from = "1995-01-01") # Indice Custo de Vida Dieese variação % mensal
CapInst = BETSget(1344, data.frame = TRUE) # Utilização da capacidade instalada % (FGV)

# Mercado financeiro ----
Selic = BETSget(432, data.frame = TRUE) #	Meta definida pelo Copom
Dolar = BETSget(10813, data.frame = TRUE) #	Taxa de Cambio Livre, Dolar, Compra
InadBR = BETSget(21085, data.frame = TRUE)
InadBRPF = BETSget(21112, data.frame = TRUE)
InadBRPJ = BETSget(21086, data.frame = TRUE)
Endi = BETSget(19882, data.frame = TRUE) # Endividamento das familias com o Sistema Financeiro Nacional em relacao a renda acumulada dos ultimos doze meses
End = BETSget(20400, data.frame = TRUE) # Endividamento das familias com o Sistema Financeiro Nacional exceto credito habitacional em relacao a renda acumulada dos ultimos doze meses
PTCC_grandes = BETSget(21397, data.frame = TRUE) # Pesquisa Trimestral de Condições de Crédito - Grandes Empresas - Aprovações observadas
PTCC_mpme = BETSget(21399, data.frame = TRUE) # Pesquisa Trimestral de Condições de Crédito - Micro, Pequenas e Médias Empresas - Aprovações observadas
PTCC_consumo = BETSget(21401, data.frame = TRUE) # Pesquisa Trimestral de Condições de Crédito - Crédito para consumo - Aprovações observadas
PTCC_habitacao = BETSget(21403, data.frame = TRUE) # Pesquisa Trimestral de Condições de Crédito - Crédito habitacional - Aprovações observadas


# 2.2 Espírito Santo ---------------------------------------------------------


# PIB ----
PIBES = BETSget(24093, data.frame = TRUE) # PIB corrente a preços de mercado (Ref. 2010)
PIBvarES = BETSget(24094, data.frame = TRUE) # variação anual real

# Índice de Atividade Econômica Regional ----
IBCRES = BETSget(25398, data.frame = TRUE) # dessazonalizado
IBCRESs = BETSget(25399, data.frame = TRUE) # dessazonalizado

# Serviços e Comércio ----
VarejoES = BETSget(1473, data.frame = TRUE) # índice volume de vendas no varejo
ServicosES = BETSget(28134, data.frame = TRUE) # índice pesquisa mensal serviços
ServicosESs = BETSget(28033, data.frame = TRUE) # índice pesquisa mensal serviços
ExpES = BETSget(13386, data.frame = TRUE) # exportação de bens em US$ milhares

# Mercado de Trabalho ----
EmpregoES = BETSget(28308, data.frame = TRUE) # índice de emprego formal
EmpregoGES = BETSget(12985, data.frame = TRUE) # empregos formais gerados em unidade

# Preços ----
CestaES = BETSget(7494, data.frame = TRUE) # custo da cesta básica de Vitória

# Setor Público ----
ResultadoES = BETSget(14923, data.frame = TRUE) # resultado primário do ES (Estado e municípios) acumulado no ano em milhões
DividaES = BETSget(15141, data.frame = TRUE) # dívida líquida do ES (Estado e municípios)

# Mercado Financeiro ----
SaldoESPF = BETSget(14009, data.frame = TRUE) # saldo das operações de crédito em milhões
SaldoESPJ = BETSget(14036, data.frame = TRUE)
SaldoES = BETSget(14063, data.frame = TRUE)
InadESPF = BETSget(15868, data.frame = TRUE) # inadimplência %
InadESPJ = BETSget(15900, data.frame = TRUE)
InadES = BETSget(15932, data.frame = TRUE)


# 3. ARQUIVO -----------------------------------------------------------------


series = mget(ls())
usethis::use_data(series, overwrite = TRUE)
