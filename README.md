# Sistema Simples de Notificação Remota (SSNR)
O Sistema Simples de Notificação Remota (SSNR) é um protocolo de notificações distribuída em modelo cliente-servidor.
Nele há dois tipos de possíveis clientes, emissores e receptores de notificações.
No sistema os clientes se comunicam por meio de um servidor que contem a identificação de casa receptor e,
sempre que recebe uma notificação,
a encaminha ao destinatário correspondente.
Um cliente pode ser apenas emissor ou apenas receptor, simplificando assim a implementação do protocolo em um dispositivo.

Esta é uma parte do meu trabalho final da disciplina de Redes de Computadores da UFPel 2018/2.

## Implementações
É necessário Go versão >= 1.9; para o cliente receptor foi usado o [libnotify](https://developer.gnome.org/libnotify/) para notificações na área de trabalho, sem ele as notificações serão apenas apresentadas no _log_ da aplicação no _stdout_.
As aplicações também podem ser obtidas e instaladas com `go get` e `go install`.

Implementações deste protocolo encontram-se em outros repositórios listados a seguir:

1. Api em Go [github.com/Jonathas-Conceicao/ssnrgo](https://github.com/Jonathas-Conceicao/ssnrgo/)
2. Cliente emissor [github.com/Jonathas-Conceicao/ssnrsender](https://github.com/Jonathas-Conceicao/ssnrsender/)
3. Cliente receptor [github.com/Jonathas-Conceicao/ssnrreceiver](https://github.com/Jonathas-Conceicao/ssnrreceiver/)
4. Servidor [github.com/Jonathas-Conceicao/ssnrserver](https://github.com/Jonathas-Conceicao/ssnrserver/)
