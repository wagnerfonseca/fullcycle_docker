# Full Cycle Rocks

Aplicação simples desenvolvida em Go para o desafio de Docker da Full Cycle.

## Objetivo

Construir e publicar uma imagem Docker otimizada, com tamanho final inferior a
2 MB. Ao executar o container, a aplicação deve retornar exatamente:

```text
Full Cycle Rocks!!
```

## Tecnologias

- Go
- Docker
- Docker Hub

## Executar a imagem publicada

Imagem disponível no Docker Hub:

<https://hub.docker.com/r/wagnerfonseca/fullcycle-docker-go>

Baixe e execute a imagem com:

```bash
docker run wagnerfonseca/fullcycle-docker-go
```

## Executar localmente

Para construir a imagem a partir do código-fonte:

```bash
docker build -t wagnerfonseca/fullcycle-docker-go .
```

Verifique o tamanho final da imagem:

```bash
docker image inspect wagnerfonseca/fullcycle-docker-go \
	--format='{{.Size}} bytes'
```

O resultado deve ser inferior a `2097152 bytes` (2 MB).

Depois, execute o container:

```bash
docker run wagnerfonseca/fullcycle-docker-go
```

## Estrutura do projeto

```text
.
├── Dockerfile
├── go.mod
├── main.go
└── README.md
```

## Entrega

- O código-fonte e o `Dockerfile` devem estar em um único repositório.
- O projeto deve ser entregue na branch `main`.
- A imagem deve estar pública no Docker Hub.
- A imagem final deve ter menos de 2 MB.

