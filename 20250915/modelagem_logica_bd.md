


PRODUTOS
ID (PK)  
Nome (NOT NULL)  
PrecoKg (NOT NULL)  
Lote (NOT NULL)  
TipoID (FK TIPO.ID)  
EstoqueMedio (NOT NULL)  
EstoqueMinimo (NOT NULL)  
EstoqueMaximo (NOT NULL)  
FornecedorID (FK FORNECEDORES.ID)  



TIPO
ID (PK)  
Nome  
FornecedorID (FK FORNECEDORES.ID)  



CLIENTES
ID (PK)  
Nome (NOT NULL)  
Endereco (NOT NULL)  
CPF (CHECK: CPF ou CNPJ deve estar preenchido)  
CNPJ (CHECK: CPF ou CNPJ deve estar preenchido)  
TicketMedio  



FUNCIONARIOS
ID (PK)  
Nome (NOT NULL)  
Cargo (NOT NULL)  
CPF (NOT NULL)  
Endereco (NOT NULL)  



TRANSPORTADORAS
ID (PK)  
Nome (NOT NULL)  
Regiao (NOT NULL)  
TicketMedio  
CNPJ (NOT NULL)  
EntregasRealizadas  



PEDIDOS
ID (PK)  
Data (NOT NULL)  
DataEntrega (NOT NULL)  
ProdutoID (FK PRODUTOS.ID)  
TransportadoraID (FK TRANSPORTADORAS.ID)  
FuncionarioID (FK FUNCIONARIOS.ID)  
ClienteID (FK CLIENTES.ID)  
