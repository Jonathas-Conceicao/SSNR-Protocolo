# Protocolo-Notificacoes-Distribuidas
Protocolo de um sistema de Notificações Distribuídas, Trabalho Redes 2018/2.

## Mensagens
Tipos de mensagens:
- **Notificação**:
	- Cabeçalho com: 16
		- Código do tipo de mensagem; 1
		- Código Receptor; 11
		- _Timestamp_; 4
	- No corpo:
		- Nome Emissor;
		- Mensagem.
- **Listagem** - Lista receptores conectados, contém:
	- Cabeçalho com: 12 bytes
		- Código do tipo de mensagem; 1 bytes
		- Número total de usuários; 11 bytes
	- No corpo <**Solicitação**>:
		- Nome Emissor.
	- No corpo <**Resposta**>:
		- Lista de usuários (Código, Nome).
- **Registro** - contém:
	- Cabeçalho com: 12 bytes
		- Código do tipo de mensagem; 1 bytes
		- Código Receptor; 11 bytes
	- No Corpo <**Solicitação**>:
	- No Corpo <**Resposta**>:
		- Código de error. 1 bytes
	- No Corpo <**Desconexão**>:
