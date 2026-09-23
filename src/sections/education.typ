#import "../data.typ": education
#import "../components.typ": section-title, meta

#let education-section() = {
  v(7pt)
  pad(left: 6.8pt)[#section-title("Education", width: 84pt)]
  v(18.4pt)
  pad(left: 10pt)[#grid(
    columns: (1fr, 82pt),
    column-gutter: 7pt,
    [
      #grid(
        columns: (auto, 1fr),
        column-gutter: 10pt,
        education.institution,
        education.program,
      )
      #v(9.4pt)
      #education.description
    ],
    [
      #v(9pt)
      #meta(education.location, education.dates)
    ],
  )]
}
