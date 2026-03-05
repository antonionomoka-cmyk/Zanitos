#ifndef ZENITOS_H
#define ZENITOS_H

#include <iostream>
#include <string>

// --- TRADUÇÕES ---
#define se          if
#define senao       else
#define enquanto    while
#define para        for
#define interromper break
#define continuar   continue
#define retornar    return
#define texto       std::string
#define inteiro     int
#define decimal     float
#define boleano     bool
#define verdadeiro  true
#define falso       false
#define principal   int main()

// --- CORES ---
#define RESET       "\033[0m"
#define VERMELHO    "\033[31m"
#define VERDE       "\033[32m"
#define AZUL        "\033[34m"
#define AMARELO     "\033[33m"

// --- PRINT (Precisa ficar aqui por causa do Template) ---
inline void print() { std::cout << std::endl; }
template <typename T, typename... Args>
void print(T primeiro, Args... resto) {
    std::cout << primeiro << " ";
    print(resto...);
}

// --- ASSINATURAS (A lógica real está no binário) ---
std::string ler(std::string prompt);
int ler_inteiro(std::string prompt);
float ler_decimal(std::string prompt);

#endif
