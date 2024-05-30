# stanford: An Unofficial Quarto Theme Extension

The `stanford` Quarto theme extension provides **unofficial** Stanford University theming for Quarto documents. 

> [!NOTE]
>
> This extension was made for a guest lecture inside of STATS 352 to show the versatility of Quarto.
>

## Installing

```bash
quarto use template coatless-quarto/stanford
```

This will install the extension and create an example qmd file that you can use as a starting place for your article.

## Example

For each format, there is a template file available. See:

- **RevealJS:** [RevealJS Slide Demo](https://quarto.thecoatlessprofessor.com/stanford/demos/template-revealjs.html) ([Source](docs/demos/template-revealjs.qmd))
- **HTML:** [HTML Page Demo](https://quarto.thecoatlessprofessor.com/stanford/demos/template-html.html) ([Source](docs/demos/template-html.qmd))
- **Beamer:** [Beamer Slide Demo](https://quarto.thecoatlessprofessor.com/stanford/demos/template-beamer.pdf) ([Source](docs/demos/template-beamer.qmd))
- **PDF Letter of Recommendation (LOR):** [PDF LOR Demo](https://quarto.thecoatlessprofessor.com/stanford/demos/template-lor-pdf.pdf) ([Source](docs/demos/template-lor-pdf.pdf))

## Acknowledgements

### Beamer Acknowledgements 

The stanford beamer theme was obtained from:

- <https://github.com/sanhacheong/stanford-beamer-presentation>

There was a prior work attempt at packaging the theme into a Quarto extension. 

- <https://github.com/eLearningHub/quarto-stanford-presentation-starter>

## Developer notes

For the Beamer theme to work, we overloaded different [latex template partials](https://quarto.org/docs/journals/templates.html#latex-partials) in Quarto. Notably, we overloaded the [title.tex](https://github.com/quarto-dev/quarto-cli/blob/main/src/resources/formats/pdf/pandoc/title.tex) (authors and institute modifications) and [before-body.tex](https://github.com/quarto-dev/quarto-cli/blob/main/src/resources/formats/pdf/pandoc/before-body.tex) (to remove bar on title slide). Further customizations were set in [front-matter.tex](https://github.com/coatless-quarto/stanford/main/_extensions/stanford/beamer/front-matter.tex) (designate [theme folder](https://tex.stackexchange.com/a/284157/53878), load theme, and set theme specific commands).
