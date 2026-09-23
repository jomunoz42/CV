#import "../data.typ": contact
#import "../components.typ": contact-line
#import "../style.typ": accent

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
      #contact-line("phone", contact.phone, url: "tel:+351963342132")
      #v(9.5pt)
      #contact-line("email", contact.email, url: "mailto:" + contact.email)
      #v(9.5pt)
      #contact-line("location", contact.location)
      #v(9.5pt)
      #contact-line("linkedin", [LinkedIn], url: contact.linkedin, underline-link: true)
      #v(9.5pt)
      #contact-line("github", [Github], url: contact.github, underline-link: true)
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
