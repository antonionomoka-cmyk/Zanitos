# 🟢 Zenitos++ (Z++) - Versão 1.1

> **Biblioteca C++ Nativa em Português-Brasil.**  
> Desenvolvida para facilitar o aprendizado de lógica com sintaxe amigável e suporte global no **NetHunter**, **Termux** e **VS Code**.

---

## 🚀 O que é o Zenitos++?
O Zenitos++ é uma camada de abstração para C++ que permite a iniciantes programarem usando termos em português, sem perder a performance da linguagem original. 

### ✨ Diferenciais:
- **Sintaxe em PT-BR:** Comandos como `se`, `senao`, `para`, `inteiro`, etc.
- **Binário Protegido:** Lógica de entrada/saída otimizada e compilada em `.a` para segurança do código.
- **Cores Nativas:** Suporte direto a `VERMELHO`, `VERDE`, `AZUL` e `AMARELO`.
- **Tipagem Simples:** Uso de `texto`, `inteiro` e `decimal`.

---

## 🛠️ Instalação Global (NetHunter / Kali / Termux)

Para instalar a biblioteca no seu sistema, baixe o arquivo pelo link abaixo:

1. **Download:** [Clique aqui para baixar via MediaFire](https://download1590.mediafire.com/8rm6mb6g0n8gPqd7oY6Ljomr9dZhnsNFZiLVZjQv540AgdNzcY30k5eIgfQ-S6AK2MbQWNZvVJSdBF7c3B24qi4_ttnAfd70xD5W6cKSwSUNsVvdjSeGOSx9U3tSyvwWxeGg5quJ6aSkRrYctWBPbWBz-Q73wInp73Rr_y08_DlO/uxjugepqbscgoei/Zanitos%2B%2B.zip)

2. **Extração e Instalação:**
Abra o seu terminal na pasta onde baixou o arquivo e use:

```bash
unzip Zanitos++.zip -d zanitos_lib
cd zanitos_lib

# Se estiver no Termux:
cp zenitos.h $PREFIX/include/
cp libzenitos.a $PREFIX/lib/

# Se estiver no NetHunter/Kali Linux:
sudo cp zenitos.h /usr/local/include/
sudo cp libzenitos.a /usr/local/lib/

💻 Exemplo de Código
O Zenitos simplifica a sintaxe do C++, tornando-a mais amigável:
cpp
#include <zenitos.h>

principal {
    print("Olá mundo");
    retornar 0;
}

👤 Autor
Antonio Gabriel (antonionomoka-cmyk)
Desenvolvedor de 14 anos focado em tornar a programação C++ acessível para brasileiros.