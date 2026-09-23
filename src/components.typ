#import "style.typ": ink, accent

#let section-title(title, width: 76pt) = {
  block(above: 0pt, below: 19pt)[
    #text(size: 14pt, weight: "bold", tracking: 1.65pt)[#upper(title)]
    #v(-1.6pt)
    #line(length: width, stroke: 0.75pt + accent)
  ]
}

#let compact-list(items, spacing: 6.5pt) = {
  set list(spacing: spacing)
  list(..items.map(item => [#item]))
}

#let contact-line(icon, body, url: none) = {
  grid(
    columns: (12pt, 1fr),
    column-gutter: 3pt,
    align: (center, left),
    icon,
    if url == none { body } else { link(url, body) },
  )
}

#let meta(location, dates) = {
  set text(size: 8.15pt)
  set par(leading: 6pt)
  align(right)[
    #location\
    #dates
  ]
}

#let experience-entry(entry) = {
  block[
    #place(top + right, dy: entry.meta-offset)[
      #box(width: 78pt)[#meta(entry.location, entry.dates)]
    ]
    #block[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 12pt,
        entry.organization,
        entry.role,
      )
      #v(10pt)
      #compact-list(entry.bullets, spacing: entry.bullet-spacing)
    ]
  ]
}

#let project-icon(urls) = {
  let targets = if type(urls) == str { (urls,) } else { urls }
  stack(
    dir: ttb,
    spacing: 2pt,
    ..targets.map(url => link(url)[
      #box(width: 7pt, height: 7pt)[
        #place(dx: 0pt, dy: 2pt)[#rect(width: 4pt, height: 5pt, fill: black)]
        #place(dx: 3pt, dy: 0pt)[#rect(width: 4pt, height: 5pt, fill: black)]
      ]
    ]),
  )
}

#let project-entry(project) = {
  let targets = if "url" in project { project.url } else { project.urls }
  block[
    #place(top + right)[#text(size: 7.3pt)[#project.date]]
    #grid(
    columns: (9pt, 1fr),
    column-gutter: 4pt,
    align: (top, top),
    project-icon(targets),
    [
      #text(size: 10pt)[#project.title]
      #v(8.8pt)
      #compact-list(project.bullets)
    ],
    )
  ]
}

#let compact-column(
  title,
  items,
  rule-width,
  spacing: 10.5pt,
  indent: 7.2pt,
  extra-gap: 0pt,
) = {
  align(left)[
    #section-title(title, width: rule-width)
    #v(extra-gap)
    #set list(indent: indent)
    #compact-list(items, spacing: spacing)
  ]
}
