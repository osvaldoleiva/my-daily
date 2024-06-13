#!/bin/zsh

function open_daily_page() {
    local url_file="$HOME/.daily_url"
    local profile_name="mercadolibre.cl"  # Cambia esto al nombre del perfil que deseas usar

    if [[ $1 == "change" ]]; then
        # Solicitar al usuario que ingrese la nueva URL
        read "url?Ingresa la nueva Google Meet de tu daily: "
        # Guardar la nueva URL en el archivo
        echo "$url" > "$url_file"
        echo "Nueva URL guardada: $url"
    else
        if [[ -f $url_file ]]; then
            # Leer la URL guardada
            local url=$(<"$url_file")
            echo "Usando URL guardada: $url"
        else
            # Solicitar al usuario que ingrese la URL
            read "url?Ingresa la Google Meet de tu daily: "
            # Guardar la URL en el archivo
            echo "$url" > "$url_file"
            echo "URL guardada: $url"
        fi
    fi

    # Comando para abrir la URL en Google Chrome con un perfil específico
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open -na "Google Chrome" --args --profile-directory=Default "$url"
    else
        echo "Sistema operativo no soportado."
    fi
}

# Alias para el comando daily
alias daily="open_daily_page"
