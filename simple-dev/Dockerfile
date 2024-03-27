FROM ubuntu:latest

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install software
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    luajit \
    luarocks \
    nodejs \
    npm \
    python3-pip \
    r-base \
    software-properties-common \
    sqlite3 \
    tmux \
    unzip \
    wget \
    zsh \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -m pip install --upgrade pynvim

# Install the latest stable version of Neovim
RUN add-apt-repository ppa:neovim-ppa/stable \
    && apt-get update \
    && apt-get install -y neovim

# Install Packer for Neovim
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    /root/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create the Neovim config directory
RUN mkdir -p ~/.config/nvim

# Copy your Neovim configuration files into the container
COPY nvim /root/.config/nvim

# Install Oh My Zsh for a better Zsh experience
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Set the working directory in the container
WORKDIR /workspace

# Set Zsh as the default shell
SHELL ["/bin/zsh", "-c"]

# Copy custom Zsh, Tmux configs, and .p10k.zsh into the image
COPY zsh/.zshrc /root/.zshrc
COPY .tmux.conf /root/.tmux.conf
COPY .p10k.zsh /root/.p10k.zsh


# Optional: Install Python packages
# RUN pip3 install numpy pandas matplotlib scipy

# Optional: Install R packages
# You can install R packages by using the Rscript command
# RUN Rscript -e "install.packages(c('ggplot2', 'tidyverse'), repos='http://cran.rstudio.com/')"

# Optional: Install Node.js packages globally
# RUN npm install -g @angular/cli react

# Set the default command to Zsh
CMD ["zsh"]

