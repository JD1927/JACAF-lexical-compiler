# JACAF Lexical Compiler

JACAF es un lenguaje de programación bastante tipado, tiene bases del lenguaje de programación Typescript y algunas adaptaciones para un mejor aprendizaje y legibilidad del código.

---

## Requisitos de uso

Tener instalado la herramienta CASE Flex, al ser código libre permite ser instalado en los sistemas operativos que se conocen:

- [**Windows**](http://gnuwin32.sourceforge.net/packages/flex.htm)
- **Linux:**
  1. Usando [APT](https://howtoinstall.co/es/flex)
  1. Usando el tarball del repositorio oficial de Flex.
- **Mac:**
  1. Usando [Homebrew](https://brew.sh/index_es) con el comando: `brew install flex`
  1. Usando el tarball del repositorio oficial de Flex.

[**Repositorio oficial de Flex**](https://github.com/westes/flex/releases)

---

## Instrucciones de uso

Para el caso de este ejercicio, se hará uso de Flex instalado dentro de un equipo con Ubuntu. Por lo tanto, los comandos que vienen a continuación tendrán similitud con los que se usan en los sistemas operativos mencionados.

### Pasos

1. Una vez descargado/clonado el repositorio, abrirlo dentro de un editor de preferencia, por ejemplo [VS Code Web](https://vscode.dev/).
1. Abrir la terminal.
1. Asegurarse que se está dentro del archivo **`./src/jacaf-compiler.l`**.
1. Escribir el siguiente comando: **`flex -o jacaf-compiler.c jacaf-compiler.l`**
   - Este comando se usa para realizar la compilación de Flex a lenguaje C.
   - También se indica la carpeta destino con la opción **`-o`** de **`flex`**.
1. De no salir errores, quiere decir que no se presentó ningún problema en la compilación de Flex a C. Por lo tanto, se puede verificar que efectivamente el archivo **`jacaf-compiler.c`** está dentro de la carpeta **`./src`**.
1. Luego, estando dentro de la misma carpeta **`./src`**, se necesita hacer la compilación del archivo **`jacaf-compiler.c`** a ejecutable. Para este paso es necesario tener un compilador de C de preferencia, en el caso particular de este proyecto, se va a usar [**GCC**](https://gcc.gnu.org/).
1. Teniendo **GCC** instalado, se procede a generar el ejecutable con el siguiente comando: **`gcc jacaf-compiler.c -o ../dist/jacaf-compiler`**
   - Este comando se usa para realizar la compilación de lenguaje C a ejecutable.
   - También se indica la carpeta destino con la opción **`-o`** de **`gcc`**.
1. Finalmente, una vez se halla hecho la compilación y no halla señales de error se puede proceder a ejecutar el analizador léxico. Recordar que se debe estar dentro de la carpeta **`./dist`**. En la terminal es sólo escribir el siguiente comando: **`./jacaf-compiler`**
