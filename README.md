UNSW Maths and Stats Honours Thesis Rmarkdown Template
=========================================

This repository provides a template for a UNSW Maths and Stats Honours thesis using Rmarkdown with the bookdown package. It is designed to match with the school given [Honours Thesis Style](https://www.maths.unsw.edu.au/currentstudents/honours-thesis-information). It's partly based on that original style as well as [Rob J Hyndman's template for Monash Honours Students](https://github.com/robjhyndman/MonashHonoursThesis) (which this forks).


## Requirements

To set up the software, you will need to install the `bookdown` package and its dependencies as follows:

```r
install.packages('bookdown')
```
You will also need LaTeX installed. If you don't already have LaTeX, one convenient approach is to install it via R:

```r
install.packages('tinytex')
tinytex::install_tinytex()
```

Note: the first time that you `kint` everything together it can take a while as 
latex gets and installs all the packages it needs. Don't fret!


## Structure and Setup

`bookdown` naturally works by collating individual Rmarkdown files (`.Rmd`) and
`knit`-ing them together into a single pdf through Rmarkdown (`Rmd` to `md`), 
pandoc (`md` to `tex`) and latex (`tex` to `pdf`). 

This template is designed to leverage bookdown to enable the effective 
organisation of Rmarkdown documents on top of the feature set Rmarkdown has to 
offer (such as running code inline, the easy embedding of R output and the simpler 
markdown syntax). 

There are a couple of key files to make a note of:

* Your chapter files 
  * These files are usually named [A-Z][0-9]-text.Rmd
  * They contain the content (prose,code,maths) that makes up the body of your thesis
  * They're in Rmarkdown which supports Markdown first and Latex second
    * [However, raw latex code can be embeded by surrounding it with a code fence with the =latex option](https://bookdown.org/yihui/rmarkdown-cookbook/raw-latex.html)
* `unswthesis.tex`
  * This file is the template and preamble of your thesis it contains a bunch of 
  shortcuts you can use within your thesis and defines it's overall structure.
* `unswthesis.cls`
  * This file defines the unswthesis class file that the template references. 
  It contains all the imports for all the packages and macros needed to 
  define the granular look of the thesis. 
* `bookdown.yml`
  * This file sets all the parameters for bookdown to look at when collating, 
  kniting and rendering.
  * For chapters to be included in the thesis they MUST be added to the rmd_files
list parameter. 
* `_output.yaml`
  * This file defines the output preferences of the thesis, it points bookdown 
  to the `unswthesis.tex` template
* `thesisrefs.bib`
  * This template uses biblatex to automatically build it's bibliography, 
  this is the file which you add your bibliographic sources and citations
  * Citations are not included unless they are sourced in the body text, 
  look at `B2-chap2.Rmd` for more details


Lastly, if you want to do something extra or run into trouble I highly recommend
going through the [R Markdown Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook)
and/or the [bookdown: Authoring Books and Technical Documents with R Markdown](https://bookdown.org/yihui/bookdown/)
