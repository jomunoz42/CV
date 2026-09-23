#import "style.typ": cv-style
#import "sections/header.typ": header-section
#import "sections/summary.typ": summary-section
#import "sections/experience.typ": experience-section
#import "sections/education.typ": education-section
#import "sections/projects.typ": projects-section
#import "sections/skills.typ": skills-section
#import "sections/languages.typ": languages-section

#show: cv-style

#header-section()
#summary-section()
#experience-section()
#education-section()
#projects-section()

#v(16.8pt)
#align(center)[
  #move(dx: -3pt)[
    #grid(
      columns: (194pt, 148pt),
      column-gutter: 34pt,
      align: left + top,
      skills-section(),
      languages-section(),
    )
  ]
]
