#import "../data.typ": skills
#import "../components.typ": compact-column

#let skills-section() = compact-column(
  "Skills",
  skills,
  76pt,
  spacing: 11pt,
  indent: -4.4pt,
)
