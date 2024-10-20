# docker-ubuntu-java-ee
Imagem do Ubuntu contendo o JDK11 e Netbeans 12.5 

Passos para rodar:
Salve o Dockerfile e o docker-compose.yml no mesmo diretório.
Permita que o Docker acesse o display do seu host (a GUI):
No terminal, execute:
bash

xhost +local:docker
Isso permite que os containers do Docker usem a interface gráfica.
Navegue até o diretório com os arquivos e execute:
bash

docker-compose up --build
O NetBeans será iniciado e exibido na sua interface gráfica local (via X11 forwarding).
