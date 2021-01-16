# Curriculum Vitæ

Constantly updated personal CV, created using LaTeX.

Actually, two versions of the CV are available and mantained:

- work: compressed version with emphasis on the technical and programming skills;
- science: complete version with emphasis on the research area of interest and on the scientific results. 


Make sure to install the correct installation of LaTeX, in order to include the `moderncv` package. To do that, run the command:

    sudo apt-get install texlive-latex-extra

In order to compile the source file and produce the PDF, use the `Makefile`. The temporary files created during the compiling process will be automatically deleted by the script.

To compile the work version of the CV, run the command:

    make work

while to compile the scientific version, run the command:

    make science


