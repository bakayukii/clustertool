#!/usr/bin/sudo bash

function install_deps {
    case "$(uname -s)" in
        Darwin*)
            echo -e "macOS detected..."
            install_deps_darwin
            ;;
        Linux*)
            echo -e "Linux host detected..."
            install_deps_linux
            ;;
        *)
            echo -e "${bold}ERROR:${reset} unknown host detected. Exiting..."
            exit
            ;;
    esac
}
export install_deps
