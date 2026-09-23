#let contact = (
  phone: "+351 963 342132",
  email: "jpmunoz@sapo.pt",
  location: "Lisbon, Portugal",
  linkedin: "https://www.linkedin.com/in/joaomunoz42/",
  github: "https://github.com/jomunoz42",
)

#let summary = [
  #strong[Software developer] trained at #strong[42] with strong focus on systems programming, #strong[low-level] development, and #strong[Unix environments].\
  Experienced in building complex projects in #strong[C], including shell implementation. Background in various #strong[leadership roles] and\
  #strong[high-responsibility] field operations, #strong[strong problem-solving skills], #strong[consistency], autonomy, and #strong[resilience]. Seeking junior\
  backend, systems programming, or infrastructure-oriented software engineering opportunities.
]

#let experience = (
  (
    organization: [#strong[Infraestruturas de Portugal (IP)]],
    role: [#strong[Team Leader] of Safety and Signalization - Linha AV Lisboa-Madrid (Lote C)],
    location: "Elvas, Portugal",
    dates: "2020 - 2023",
    meta-offset: 31.5pt,
    bullet-spacing: 6.5pt,
    bullets: (
      [Coordinated daily field operations ensuring compliance with safety protocols and project timelines],
      [Managed risk assessment and rapid decision-making in #strong[high-pressure] environments.],
      [Recognized for #strong[high productivity] and leadership within management team.],
    ),
  ),
  (
    organization: [#strong[Castilho Hostel and Suites 63]],
    role: [Receptionist - #strong[Developed Automation Pipeline]],
    location: "Lisbon, Portugal",
    dates: "2023 - 2025",
    meta-offset: 57pt,
    bullet-spacing: 11pt,
    bullets: (
      [Managed guest check-ins and issue resolution independently in a high-volume hostel environment.],
      [Developed #strong[strong communication] and problem-solving skills in dynamic environments.],
      [#strong[Developed a Python automation pipeline] to streamline operational workflows including\
       reservations processing, guest communication, and access code management.],
      [#strong[Integrated Selenium, Excel-based workflows with openpyxl, WhatsApp Web], and external services to\
       #strong[automate] repetitive manual tasks and #strong[improve operational efficiency]. Currently #strong[being used internally].],
      [Implemented #strong[robust error handling] and automation reliability improvements for #strong[production-like daily usage].],
    ),
  ),
)

#let education = (
  institution: [#strong[42 LISBOA]],
  program: [Software Development],
  location: "Lisbon, Portugal",
  dates: "April 2025 - PRESENT",
  description: [Part of the prestigious #strong[42 network], ranked among the top institutions for innovative education in the\
    WURI (World’s Universities with Real Impact) ranking.],
)

#let projects = (
  (
    title: [Minishell — #strong[Unix Shell Implementation] #strong[(C, Linux)]],
    date: "Nov 2025",
    after: 10.3pt,
    url: "https://github.com/jomunoz42/minishell",
    bullets: (
      [Developed a Unix-like shell in #strong[C] implementing process #strong[creation, pipes, redirections, and signal handling].],
      [Managed memory allocation and process control using low-level system calls #strong[(fork, execve, wait).]],
    ),
  ),
  (
    title: [Philosophers — #strong[Threads and Processes]],
    date: "Oct 2025",
    after: 16pt,
    url: "https://github.com/jomunoz42/philosophers",
    bullets: (
      [Implemented the Dining Philosophers problem in #strong[C] using #strong[POSIX threads], focusing on synchronization and\
       shared resources.],
      [Ensured #strong[thread safety] with #strong[mutexes], preventing race conditions and deadlocks.],
    ),
  ),
  (
    title: [CPP Modules (CPP0 – CPP9) — #strong[C++]],
    date: "Jan - April 2025",
    after: 8.5pt,
    urls: (
      "https://github.com/jomunoz42/CPP0-CPP4",
      "https://github.com/jomunoz42/CPP5-CPP9",
    ),
    bullets: (
      [Developed #strong[object-oriented] applications in #strong[C++], working with #strong[inheritance, polymorphism], memory\
       management, #strong[templates, STL containers], and exception handling.],
      [Applied software engineering principles including abstraction, modular design, generic programming, and\
       performance-conscious development.],
    ),
  ),
)

#let skills = (
  [#strong[Programming:] C / C++ / Python],
  [#strong[Systems:] Linux, Git],
  [#strong[Concepts:] Memory management, Process\
   control, Parsing, Raycasting],
)

#let languages = (
  [#strong[English (C1)]],
  [Portuguese (Native)],
  [Spanish (B2)],
)
