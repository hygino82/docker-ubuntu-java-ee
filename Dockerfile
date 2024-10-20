# Usar uma imagem base do Ubuntu 24.04
FROM ubuntu:24.04

# Instalar atualizações, JDK 11, NetBeans e dependências para X11
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget unzip libxext6 libxrender1 libxtst6 libxi6 x11-apps && \
    wget https://archive.apache.org/dist/netbeans/netbeans/12.5/netbeans-12.5-bin.zip && \
    unzip netbeans-12.5-bin.zip -d /opt/ && \
    rm netbeans-12.5-bin.zip

# Definir a variável de ambiente do Java
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Definir o diretório de trabalho para o NetBeans
WORKDIR /opt/netbeans

# Comando padrão para rodar o NetBeans
CMD ["bin/netbeans"]
