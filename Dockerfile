FROM ubuntu:20.04

RUN apt-get update && apt-get -y upgrade

# 脆弱性を含んだパッケージをインストール
RUN apt-get install -y liblog4j2-java=2.11.2-1

RUN apt-get clean && rm -rf /var/lib/apt/lists

RUN groupadd -r wpuser && useradd -r -g wpuser wpuser
USER wpuser

CMD ["/bin/bash"]