FROM fedora

RUN dnf install -y curl unzip tmux cronie cronie-anacron

WORKDIR /home

COPY scripts/init.sh .
COPY scripts/save.sh .

# The version to use as a server (here 1.4.4.9)
ENV version=1449

EXPOSE 7777

CMD chmod +x init.sh \
    && chmod +x save.sh \
    && ./init.sh
