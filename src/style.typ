#let ink = rgb("#303849")
#let accent = rgb("#2e5b83")
#let circuit = rgb("#d9e8e3")

#let circuit-trace(points, node: none) = {
  for pair in points.windows(2) {
    place(top + left)[
      #line(
        start: pair.at(0),
        end: pair.at(1),
        stroke: 0.55pt + circuit,
      )
    ]
  }
  if node != none {
    circle(
      radius: 0.75pt,
      fill: circuit,
      stroke: none,
    )
  }
}

#let circuit-background = {
  // Top-left fan.
  place(top + left, dx: -1pt, dy: 0pt)[
    #box(width: 74pt, height: 40pt)[
      #circuit-trace(((0pt, 4pt), (24pt, 4pt), (32pt, 12pt), (62pt, 12pt)))
      #circuit-trace(((0pt, 10pt), (18pt, 10pt), (27pt, 19pt), (59pt, 19pt)))
      #circuit-trace(((0pt, 17pt), (11pt, 17pt), (21pt, 27pt), (53pt, 27pt)))
      #circuit-trace(((0pt, 25pt), (31pt, 25pt), (39pt, 33pt), (72pt, 33pt)))
      #place(dx: 49pt, dy: 18.25pt)[#circle(radius: 0.8pt, fill: circuit)]
    ]
  ]

  // Top-right traces.
  place(top + right, dx: -50pt, dy: 0pt)[
    #box(width: 50pt, height: 36pt)[
      #circuit-trace(((50pt, 5pt), (32pt, 5pt), (25pt, 12pt), (13pt, 12pt)))
      #circuit-trace(((50pt, 14pt), (39pt, 14pt), (31pt, 22pt), (10pt, 22pt)))
      #circuit-trace(((50pt, 23pt), (43pt, 23pt), (36pt, 30pt)))
      #place(dx: 12pt, dy: 11.25pt)[#circle(radius: 0.8pt, fill: circuit)]
    ]
  ]

  // Small edge fragments.
  place(top + right, dx: -21pt, dy: 107mm)[
    #box(width: 22pt, height: 18pt)[
      #circuit-trace(((22pt, 3pt), (13pt, 3pt), (8pt, 8pt), (2pt, 8pt)))
      #circuit-trace(((22pt, 12pt), (14pt, 12pt)))
    ]
  ]
  place(top + right, dx: -22pt, dy: 181mm)[
    #box(width: 23pt, height: 18pt)[
      #circuit-trace(((23pt, 4pt), (13pt, 4pt), (9pt, 8pt), (2pt, 8pt)))
      #circuit-trace(((23pt, 13pt), (10pt, 13pt)))
    ]
  ]

  // Bottom corners.
  place(bottom + left, dx: 0pt, dy: -35pt)[
    #box(width: 52pt, height: 35pt)[
      #circuit-trace(((0pt, 34pt), (20pt, 34pt), (27pt, 27pt), (49pt, 27pt)))
      #circuit-trace(((0pt, 26pt), (24pt, 26pt), (31pt, 19pt), (49pt, 19pt)))
      #circuit-trace(((0pt, 18pt), (28pt, 18pt), (35pt, 11pt), (49pt, 11pt)))
    ]
  ]
  place(bottom + right, dx: -66pt, dy: -45pt)[
    #box(width: 66pt, height: 45pt)[
      #circuit-trace(((66pt, 44pt), (36pt, 44pt), (29pt, 37pt), (9pt, 37pt)))
      #circuit-trace(((66pt, 35pt), (41pt, 35pt), (34pt, 28pt), (6pt, 28pt)))
      #circuit-trace(((66pt, 26pt), (48pt, 26pt), (40pt, 18pt), (15pt, 18pt)))
      #circuit-trace(((66pt, 17pt), (53pt, 17pt), (45pt, 9pt), (25pt, 9pt)))
      #place(dx: 13pt, dy: 27.25pt)[#circle(radius: 0.8pt, fill: circuit)]
    ]
  ]
}

#let cv-style(body) = {
  set page(
    paper: "a4",
    margin: (top: 3.6mm, bottom: 5.5mm, left: 6.7mm, right: 6.7mm),
    background: circuit-background,
  )
  set text(
    font: "Ubuntu Sans",
    size: 9.4pt,
    fill: ink,
    weight: "regular",
  )
  set par(
    leading: 7pt,
    spacing: 0pt,
    justify: false,
  )
  set list(
    marker: rect(width: 2.2pt, height: 2.2pt, fill: ink),
    indent: 7.2pt,
    body-indent: 4.8pt,
    spacing: 6.5pt,
  )
  body
}
