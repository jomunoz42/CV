#import "../data.typ": languages
#import "../components.typ": compact-column

#let languages-section() = block(width: 100%)[
  #move(dy: -1.8pt)[
    #compact-column(
      "Languages",
      languages,
      86pt,
      spacing: 13.5pt,
      extra-gap: 5.1pt,
    )
  ]
]
