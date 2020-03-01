# Ticker (Stock Ticker)
Real-time command line stock ticker.

## Ticker (Project Info)
[Website](https://github.com/alexanderepstein/Bash-Snippets)

## Docker Hub
[Website](https://hub.docker.com/r/macabees/ticker/)

## Build image
`docker build -t macabees/ticker:latest .`

## Docker Push
`$ docker push -t macabees/aafire:latest`

Note: requires `docker login`

## Run image
Single Stock Symbols: 
`$ docker run -it --rm macabees/ticker GOOG`

Multiple Stock Symbols:
`$ docker run -it --rm macabees/ticker AAPL MSFT GOOG BTC-USD`

Multiple Stock Symbols (updated every five seconds):
```
$ while true; do clear; docker run -it --rm macabees/ticker \
AAPL MSFT GOOG BTC-USD; sleep 5; done
```
