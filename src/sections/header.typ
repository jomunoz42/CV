#import "../data.typ": contact
#import "../components.typ": contact-line
#import "../style.typ": ink, accent

#let square-icon(fill: ink) = rect(width: 7pt, height: 7pt, fill: fill, stroke: none)

#let header-section() = {
  grid(
    columns: (1fr, 157pt),
    column-gutter: 12pt,
    align: (bottom, top),
    [
      #move(dy: -1.5pt)[
        #pad(left: 2pt)[
          #v(16pt)
          #text(size: 31pt, weight: "bold", tracking: -0.5pt)[JOÃO MUÑOZ]
          #v(15.5pt)
          #text(size: 14pt, weight: "bold", tracking: 1.7pt)[S U M M A R Y]
        ]
      ]
    ],
    [
      #set text(size: 10pt)
      #contact-line(square-icon(fill: black), contact.phone)
      #v(9.5pt)
      #contact-line(square-icon(), link("mailto:" + contact.email, contact.email))
      #v(9.5pt)
      #contact-line(square-icon(), contact.location)
      #v(9.5pt)
      #contact-line(square-icon(), underline(link(contact.linkedin)[LinkedIn]))
      #v(9.5pt)
      #contact-line(
        circle(radius: 3.5pt, stroke: 1.6pt + black),
        underline(link(contact.github)[Github]),
      )
    ],
  )
  v(7.5pt)
  align(right)[
    #rect(width: 78%, height: 2.1pt, fill: gradient.linear(
      rgb("#71d2e5"),
      accent,
      angle: 90deg,
    ))
  ]
}
