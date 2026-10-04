# Step 3: Install the course packages

The course uses **renv**, which installs exactly the package versions the course was built with, so everyone's code behaves the same.

1. Open the course project in RStudio (double-click `network_science_ir.Rproj`).
2. In the Console, run:

```r
install.packages("renv")
renv::restore()
```

3. Answer `y` when asked. This takes several minutes the first time.

**Check:** run

```r
library(igraph)
plot(make_graph("Zachary"))
```

If a network plot appears, you are ready.

## Install Quarto

Recent versions of RStudio include Quarto. To check, open `sessions/01_relational_thinking.qmd` and click **Render**. If an HTML page appears, you're set. If not, install Quarto from <https://quarto.org/docs/get-started/>.
