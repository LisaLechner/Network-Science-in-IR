# Network Science in International Relations

Course materials for **Network Science in IR**, University of Innsbruck at DIA, winter semester 2026/27. Taught by Lisa Lechner (lisa.lechner\@uibk.ac.at).

International politics is relational: alliances, trade, treaties, diplomatic ties, and shared membership in international organisations. This course teaches you to think in relations rather than attributes, and to analyse relational data in R. Every concept is first worked through by hand and then explored in code, so you understand *why* a measure or model behaves the way it does, not only how to call a function.

## Setup: required before the first session

Please complete these steps before class. There will be no time for installation in class.

1.  Install R and RStudio: [setup/01_install_r_rstudio.md](setup/01_install_r_rstudio.md)
2.  Get this repository onto your laptop: [setup/02_get_the_repo.md](setup/02_get_the_repo.md)
3.  Install the course packages: [setup/03_install_packages.md](setup/03_install_packages.md)

If anything fails, use [Posit Cloud](https://posit.cloud) as a fallback (see setup step 2).

## How to work with the materials

Each session is a Quarto document (`.qmd`). Open it in RStudio and run the code chunks one by one with the green arrow, or click **Render** to produce the full HTML page.

Before each session, pull the latest version: in RStudio, open the **Git** tab and click **Pull**. Do your own exercise work in a copy of the file (e.g. `01_relational_thinking_myname.qmd`) so pulling never conflicts with your changes.

## Repository structure

```         
sessions/   one Quarto document per session
setup/      installation guides
data/       raw/ (as downloaded) and processed/ (cleaned) data, with sources in data/README.md
R/          helper code
```

## Licence

Code is released under the MIT licence; teaching materials under CC BY 4.0.
