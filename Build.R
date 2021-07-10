# Builds pdf and site -> enables option to download pdf

bookdown::render_book("_output.yaml", "bookdown::pdf_book", output_dir = "docs")
bookdown::render_book("_output.yaml", "bookdown::gitbook", output_dir = "docs")
