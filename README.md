# my-daily

# Oh My Zsh Daily Plugin

Este es un plugin para Oh My Zsh que abre una URL de Google Meet para la daily meeting utilizando un perfil el perfil por defecto de Google Chrome.

## Instalación

1. Clona el repositorio:

    ```sh
    git clone https://github.com/osvaldoleiva/oh-my-zsh-daily-plugin.git
    ```

2. Copia el plugin a la carpeta de plugins personalizados de Oh My Zsh:

    ```sh
    cp -r oh-my-zsh-daily-plugin/daily-plugin ~/.oh-my-zsh/custom/plugins/
    ```

3. Añade el plugin a la lista de plugins en tu archivo `.zshrc`:

    ```sh
    plugins=(... daily-plugin)
    ```

4. Recarga la configuración de Zsh:

    ```sh
    source ~/.zshrc
    ```

## Uso

- Ejecuta `daily` para abrir la URL de Google Meet guardada.
- Ejecuta `daily change` para cambiar la URL guardada.
