# [Proyecto] : Compilador JACAF

## Integrantes

- Juan David Aguirre Córdoba, **[juanaguirre237288@correo.itm.edu.co](mailto:juanaguirre237288@correo.itm.edu.co)**.
- Andrés Felipe Aristizábal Velasquez, **[andresaristizabal22119@correo.itm.edu.co](mailto:andresaristizabal22119@correo.itm.edu.co)**.

### Información adicional

- **Programa:** Ingeniería de Sistemas.
- **Semestre:** 8.
- **Docente asesor:** Gabriel Taborda Blandon.
- **Materia:** Compiladores.
- **Video explicativo:** [YouTube](https://youtu.be/jjacjwaDwlU);

---

## Compilador Léxico JACAF

**JACAF** es un lenguaje de programación tipado, que tiene bases del lenguaje de programación **[Typescript](https://www.typescriptlang.org/)** con algunas adaptaciones para un mejor aprendizaje y comprensión del código.

Este lenguaje tiene como propósito:

1. Ayudar a todas las personas que quieran empezar en el mundo de la programación y requieran un lenguaje de programación para hacerlo.
1. Fomentar el uso del idioma inglés dentro del desarrollo de software, es se debe a el inglés es importante dentro del ámbito de la computación y por qué no usarlo mientras se aprende la lógica de programación.

### Problemática

Cómo ayudar a las personas que están iniciando en el mundo de la programación a través de un lenguaje de programación que facilite la curva de aprendizaje y permita fomentar el uso del idioma inglés.

### Solución

Inicialmente, la creación del lenguaje JACAF, es decir, crear todo lo correspondiente a un lenguaje de programación o por lo menos sus bases para efectos del proyecto. Es importante aclarar que para usar JACAF se necesita un compilador que pueda interpretarlo.

El propósito de este proyecto es mostrar cómo funciona un compilador sólo haciendo un análisis léxico, es decir que sólo se verifique que los valores de entrada coincidan o no con unas reglas predefinidas.

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
