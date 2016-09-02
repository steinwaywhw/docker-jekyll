FROM steinwaywhw/pandoc
RUN apt-get update && \
    apt-get install -y nano python-pygments autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev \ 
                       zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev nodejs npm && \
    apt-get clean 

RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc && \
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc && \
    source ~/.bashrc

#RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
#RUN rbenv install 2.3.1 && rbenv global 2.3.1

RUN apt-get install -y ruby2.3 ruby2.3-dev
RUN gem install bundler jekyll

EXPOSE 4000
