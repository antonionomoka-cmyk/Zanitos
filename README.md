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

Para instalar a biblioteca no seu sistema e usar em qualquer pasta, siga os passos abaixo:

1. **Baixe o Pacote:**
   [📥 Baixar Zenitos++ V1.1 (Mediafire)](https://www.mediafire.com)

2. **Instale via Terminal:**
```bash
# Extraia o arquivo
unzip zenitos_v1.zip

# No NetHunter/Kali (Global):
sudo cp zenitos.h /usr/local/include/
sudo cp libzenitos.a /usr/local/lib/
sudo ldconfig

# No Termux (Global):
cp zenitos.h $PREFIX/include/
cp libzenitos.a $PREFIX/lib/

👤 Autor
Antonio Gabriel(antonionomoka-cmyk)
Desenvolvedor de 14 anos focado em tornar a programação C++ acessível para brasileiros.