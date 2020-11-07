FROM blang/latex:ubuntu

RUN apt-get update && apt-get install -y wget

RUN wget https://www.forwiss.uni-passau.de/~berberic/TeX/Rechnung/rechnung.tar.gz \
    && tar -zxvf rechnung.tar.gz \
    && cd rechnung \
    && latex rechnung.ins \
    && mkdir /usr/share/texmf/tex/latex/rechnung \
    && cp rechnung.sty /usr/share/texmf/tex/latex/rechnung/ \
    && texhash