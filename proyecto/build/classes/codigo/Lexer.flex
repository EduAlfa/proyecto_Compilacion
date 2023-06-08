package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
Letra=[a-zA-Z]+
Digito=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
public String lexema;
%}
%%
int | if | else |
while {lexema=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {lexema=yytext(); return Igual;}
"+" {lexema=yytext(); return Suma;}
"-" {lexema=yytext(); return Resta;}
"*" {lexema=yytext(); return Multiplicacion;}
"/" {lexema=yytext(); return Division;}

/*Etiquetas*/
"<link>" {lexema=yytext(); return Etiqueta;}
"<!DOCTYPE html>" {lexema=yytext(); return Etiqueta;}
"<html" {lexema=yytext(); return Etiqueta;}
"<html>" {lexema=yytext(); return Etiqueta;}
"</html>" {lexema=yytext(); return Etiqueta_Cierre;}
"<head>" {lexema=yytext(); return Etiqueta;}
"</head>" {lexema=yytext(); return Etiqueta_Cierre;}
"<meta>" {lexema=yytext(); return Etiqueta;}
"<title>" {lexema=yytext(); return Etiqueta;}
"</title>" {lexema=yytext(); return Etiqueta_Cierre;}
"<p>" {lexema=yytext(); return Etiqueta;}
"</p>" {lexema=yytext(); return Etiqueta_Cierre;}
"<h1>" {lexema=yytext(); return Etiqueta;}
"</h1>" {lexema=yytext(); return Etiqueta_Cierre;}
"<h2>" {lexema=yytext(); return Etiqueta;}
"</h2>" {lexema=yytext(); return Etiqueta_Cierre;}
"<h3>" {lexema=yytext(); return Etiqueta;}
"</h3>" {lexema=yytext(); return Etiqueta_Cierre;}
"<h4>" {lexema=yytext(); return Etiqueta;}
"</h4>" {lexema=yytext(); return Etiqueta_Cierre;}
"<h5>" {lexema=yytext(); return Etiqueta;}
"</h5>" {lexema=yytext(); return Etiqueta_Cierre;}
"<body>" {lexema=yytext(); return Etiqueta;}
"</body>" {lexema=yytext(); return Etiqueta_Cierre;}
"<a>" {lexema=yytext(); return Etiqueta;}
"</a>" {lexema=yytext(); return Etiqueta_Cierre;}
"<div>" {lexema=yytext(); return Etiqueta;}
"</div>" {lexema=yytext(); return Etiqueta_Cierre;}
"<ul>" {lexema=yytext(); return Etiqueta;}
"</ul>" {lexema=yytext(); return Etiqueta_Cierre;}
"<ol>" {lexema=yytext(); return Etiqueta;}
"</ol>" {lexema=yytext(); return Etiqueta_Cierre;}
"<li>" {lexema=yytext(); return Etiqueta;}
"</li>" {lexema=yytext(); return Etiqueta_Cierre;}
"<main>" {lexema=yytext(); return Etiqueta;}
"</main>" {lexema=yytext(); return Etiqueta_Cierre;}
"<header>" {lexema=yytext(); return Etiqueta;}
"</header>" {lexema=yytext(); return Etiqueta_Cierre;}
"<table>" {lexema=yytext(); return Etiqueta;}
"</table>" {lexema=yytext(); return Etiqueta_Cierre;}
"<tr>" {lexema=yytext(); return Etiqueta;}
"</tr>" {lexema=yytext(); return Etiqueta_Cierre;}
"<td>" {lexema=yytext(); return Etiqueta;}
"</td>" {lexema=yytext(); return Etiqueta_Cierre;}
"<th>" {lexema=yytext(); return Etiqueta;}
"</th>" {lexema=yytext(); return Etiqueta_Cierre;}
"<br>" {lexema=yytext(); return Etiqueta;}
"<strong>" {lexema=yytext(); return Etiqueta;}
"</strong>" {lexema=yytext(); return Etiqueta_Cierre;}
"<button>" {lexema=yytext(); return Etiqueta;}
"</button>" {lexema=yytext(); return Etiqueta_Cierre;}
"<label>" {lexema=yytext(); return Etiqueta;}
"</label>" {lexema=yytext(); return Etiqueta_Cierre;}
"<form>" {lexema=yytext(); return Etiqueta;}
"</form>" {lexema=yytext(); return Etiqueta_Cierre;}
"<input>" {lexema=yytext(); return Etiqueta;}
"<select>" {lexema=yytext(); return Etiqueta;}
"</select>" {lexema=yytext(); return Etiqueta_Cierre;}
"<option>" {lexema=yytext(); return Etiqueta;}
"</option>" {lexema=yytext(); return Etiqueta_Cierre;}
"<textarea>" {lexema=yytext(); return Etiqueta;}
"</textarea>" {lexema=yytext(); return Etiqueta_Cierre;}
"<span>" {lexema=yytext(); return Etiqueta;}
"</span>" {lexema=yytext(); return Etiqueta_Cierre;}

/*Atributos*/

"id=" {lexema=yytext(); return Atributo;}
"class=" {lexema=yytext(); return Atributo;}
"align=" {lexema=yytext(); return Atributo;}
"name=""" {lexema=yytext(); return Atributo;}
"content=" {lexema=yytext(); return Atributo;}
"lang=" {lexema=yytext(); return Atributo;}
"charset=" {lexema=yytext(); return Atributo;}
"style=" {lexema=yytext(); return Atributo;}
"border=" {lexema=yytext(); return Atributo;}
"accept=" {lexema=yytext(); return Atributo;}
"href=" {lexema=yytext(); return Atributo;}
"dir=" {lexema=yytext(); return Atributo;}
"background-color=" {lexema=yytext(); return Atributo;}
"class=" {lexema=yytext(); return Atributo;}
"title=" {lexema=yytext(); return Atributo;}
"width=" {lexema=yytext(); return Atributo;}
"height=" {lexema=yytext(); return Atributo;}
"autofocus=" {lexema=yytext(); return Atributo;}
"alt=" {lexema=yytext(); return Atributo;}
"title=" {lexema=yytext(); return Atributo;}
"src=" {lexema=yytext(); return Atributo;}
"dir=" {lexema=yytext(); return Atributo;}
"color=" {lexema=yytext(); return Atributo;}
{Letra}({Letra} | {Digito})* {lexema=yytext(); return Identificador;}
("(-"{Digito}+")") | {Digito} {lexema=yytext(); return Numero;}

 . {return ERROR;}