#import "@preview/zh-kit:0.1.0": *
#import "@preview/zebraw:0.5.5": *
#import "@preview/numbly:0.1.0": numbly

#let maketitle(
  title: none,
  subtitle: none,
  author: none,
  date: none,
  institution: none,
) = {
  set page(
    margin: (top: 5cm, bottom: 3cm, left: 2.5cm, right: 2.5cm),
  )
  set par(first-line-indent: 0em, spacing: 1em)
  set align(center)

  if title != none {
    text(2.2em, weight: "bold", title)
    v(2.5em)
  }

  if subtitle != none {
    text(1.8em, weight: "regular", style: "italic", subtitle)
    v(2em)
  }

  if author != none {
    text(1.5em, author)
    v(1.2em)
  }

  if institution != none {
    text(1.3em, institution)
    v(1.8em)
  }

  if date != none {
    text(1.3em, date)
  }
}

#let template(
  enable-outline: true,
  title: none,
  author: none,
  date: none,
  institution: none,
  doc,
) = {
  setup-base-fonts({
    show: zebraw.with(numbering-separator: true, lang: false)

    set heading(numbering: numbly("{1:第一章}"))
    set text(10pt)
    set par(spacing: 12pt, leading: 9pt, justify: true)
    set list(spacing: 9pt)
    set enum(spacing: 9pt, full: true, numbering: numbly(
      "{1:1}.",
      "{2:(a)}",
      "{3:i}.",
      "{4:A}.",
    ))

    show heading: it => {
      v(5pt)
      it
      v(2pt + (3 - it.level) * 1pt)
    }

    maketitle(title: title, author: author, date: date, institution: institution)

    if enable-outline {
      set page(
        margin: (top: 5cm, bottom: 3cm, left: 2.5cm, right: 2.5cm),
      )

      show outline.entry.where(level: 1): it => {
        v(0.75em)
        strong(it)
      }

      outline(title: pad(bottom: 2em, text(size: 1.6em)[目录]), indent: 1em)
    }

    set page(footer: auto, numbering: "1")
    counter(page).update(1)
    doc
  })
}
