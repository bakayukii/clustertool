#!/usr/bin/sudo bash

function install_deps_darwin {
    cd src/deps
    # Use homebrew to install and manage dependencies
    # TODO: right now homebrew abort out due to running with root. could script be changed?
    echo "Installing talosctl..."
    brew install siderolabs/tap/talosctl || echo "installation failed..."

    echo "Installing fluxcli..."
    brew install fluxcd/tap/flux || echo "installation failed..."

    echo "Installing kubectl..."
    brew install kubectl || echo "installation failed..."

    echo "Instaling Helm..."
    brew install helm || echo "installation failed..."

    echo "Installing Kustomize"
    brew install kustomize || echo "installation failed..."

    echo "Installing velerocli..."
    brew install velero || echo "installation failed..."

    echo "Installing talhelper..."
    brew install talhelper || echo "installation failed..."

    echo "Installing pre-commit..."
    brew install pre-commit || echo "Installing pre-commit failed, non-critical continuing..."

    echo "Installing/Updating Pre-commit hooks..."
    pre-commit install --install-hooks > /dev/null || echo "installing pre-commit hooks failed, non-critical continuing..."

    echo "Installing age..."
    brew install age || echo "installation failed..."

    echo "Installing sops..."
    brew install sops || echo "installation failed..."

    echo "Finished installing all dependencies."
    cd -
}
export install_deps_darwin
