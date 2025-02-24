// importa a biblioteca dart:io
import 'dart:io'; // permite ao usuario entrar com dados 
void main(){
  print("digite seu nome"); // exibe a mensagem solicitada que o usuario digite seu nome
  // null safety
  // só ira converter o dado se a entrada nao for vazia
  String nome =stdin.readLineSync()!;
  print("digite a sua idade");
  String idade = stdin.readLineSync()!;
  
  print("nome: $nome idade: $idade");
  
}