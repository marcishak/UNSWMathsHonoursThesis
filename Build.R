# Builds site with option to download pdf

bookdown::render_book("", "bookdown::pdf_book", output_dir = "docs")
bookdown::render_book("", "bookdown::gitbook", output_dir = "docs")
