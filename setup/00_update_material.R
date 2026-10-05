# =====================================================================
# Update the course materials
# ---------------------------------------------------------------------
# Run this before every class (instead of clicking "Pull"):
#
#   source("R/update_course.R")
#
# What it does:
#   1. Any course file you changed or added is first COPIED to
#      my_work/backup_<date-time>/  -> nothing you wrote gets lost.
#   2. Your copy of the course is then reset to the latest version
#      on GitHub, so updating can never fail with a conflict.
#   Files in my_work/ are never touched.
# =====================================================================

update_course <- function() {
  if (!nzchar(Sys.which("git"))) {
    stop("Git was not found. See setup/01_install_r_rstudio.md")
  }
  
  # 1. Find files you changed or added
  status <- system2("git", c("status", "--porcelain", "--untracked-files=all"),
                    stdout = TRUE)
  files <- substring(status, 4)
  files <- sub('^"(.*)"$', "\\1", files)   # paths with spaces come quoted
  files <- sub("^.* -> ", "", files)       # renamed files: keep new name
  files <- files[file.exists(files)]       # skip deleted files
  
  # 2. Back them up
  if (length(files) > 0) {
    backup <- file.path("my_work",
                        paste0("backup_", format(Sys.time(), "%Y-%m-%d_%H%M")))
    for (f in files) {
      dest <- file.path(backup, f)
      dir.create(dirname(dest), recursive = TRUE, showWarnings = FALSE)
      file.copy(f, dest, overwrite = TRUE)
    }
    message("Your changes were saved to: ", backup)
  }
  
  # 3. Get the latest version from GitHub
  system2("git", c("fetch", "origin"))
  system2("git", c("reset", "--hard", "origin/main"))
  system2("git", c("clean", "-fd"))
  
  message("Done: course materials are up to date.")
}

update_course()