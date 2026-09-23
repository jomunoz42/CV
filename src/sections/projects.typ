#import "../data.typ": projects
#import "../components.typ": section-title, project-entry

#let projects-section() = {
  v(18pt)
  pad(left: 7pt)[#section-title("Projects", width: 75pt)]
  v(17.5pt)
  for project in projects {
    pad(left: 3pt)[#project-entry(project)]
    v(project.after)
  }
}
