#import "../data.typ": experience
#import "../components.typ": section-title, experience-entry

#let experience-section() = {
  v(19.5pt)
  pad(left: 3.7pt)[#section-title("Work Experience", width: 74pt)]
  v(18.4pt)
  for entry in experience {
    pad(left: 7.5pt)[#experience-entry(entry)]
    v(14pt)
  }
}
