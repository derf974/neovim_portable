# neovim_portable

    Neovim as IDE in docker container

## Build
    ```
        docker build -t local/neovim .
    ```
## Run
    ```
        docker run --rm -v $PWD:/app -ti local/neovim
    ```
    recommended  alias:
    ```
        alias nvim="docker run --rm -v $PWD:/app -ti local/neovim"
    ```
