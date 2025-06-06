FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get install -y curl unzip xz-utils zip git && \
    curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.6-stable.tar.xz && \
    tar xf flutter_linux_3.19.6-stable.tar.xz && \
    mv flutter /home/gitpod/flutter

ENV PATH="/home/gitpod/flutter/bin:${PATH}"
