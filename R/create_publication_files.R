library(here)
library(bib2df)
library(stringr)

bib <- bib2df::bib2df(here::here("R", "publications.bib"))

reverse_name <- function(name) {
  ## "Meyer, Jan" ==> "Jan Meyer"
  str <- paste(rev(str_split(name, ", ")[[1]]), collapse = " ")
  ## replace "Max Domagk" with admin
  if (str == "Max Domagk") str <- "admin"
  ## fix German umlaut
  str <- sub("\\{\\\\","", str)
  str <- sub("\\\"","", str)
  str <- sub("\\}","e",str)
  return(str)
}

##bib$AUTHORS <- vector("list", dim(bib)[1])
bib$TYPE <- "0"
bib$AUTHORS <- ""
bib$PUBLICATION <- ""
for (rr in 1:dim(bib)[1]) {

  ## set type and publication
  if (bib$CATEGORY[[rr]] == "INPROCEEDINGS") {
    bib$TYPE[[rr]] <- "1"
    bib$PUBLICATION[[rr]] <- bib$BOOKTITLE[[rr]]
  }
  if (bib$CATEGORY[[rr]] == "ARTICLE") {
    bib$TYPE[[rr]] <- "2"
    bib$PUBLICATION[[rr]] <- bib$JOURNAL[[rr]]
  }
  if (bib$CATEGORY[[rr]] == "PHDTHESIS") {
    bib$TYPE[[rr]] <- "7"
    bib$PUBLICATION[[rr]] <- bib$SCHOOL[[rr]]
  }

  ## remove curly braces
  bib$PUBLICATION[[rr]] <- gsub("\\{|\\}","",bib$PUBLICATION[[rr]])
  bib$TITLE[[rr]] <- gsub("\\{|\\}","",bib$TITLE[[rr]])

  ## remove NA for DOI
  if (is.na(bib$DOI[[rr]])) bib$DOI[[rr]] <- ""

  ## reverse and prepare author names
  temp <- unlist(lapply(bib$AUTHOR[[rr]], reverse_name))
  bib$AUTHORS[[rr]] <- paste(paste("  -", temp), collapse = "\n")

  ## prepare content for index.md
  index_str <- glue::glue(
"---
title: '{bib$TITLE[[rr]]}'

authors:
{bib$AUTHORS[[rr]]}

date: '{bib$YEAR[[rr]]}-01-01T00:00:00Z'
doi: '{bib$DOI[[rr]]}'

# Schedule page publish date (NOT publication's date).
publishDate: '2000-01-01T00:00:00Z'

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ['{bib$TYPE[[rr]]}']

publication: {bib$PUBLICATION[[rr]]}
---
"
)

  bib_key <- bib$BIBTEXKEY[[rr]]
  bib_folder <- here::here("content", "publication", bib_key)
  index_file <- here::here("content", "publication", bib_key, "index.md")
  ## does folder exist? if no: create and write index.md
  if (!dir.exists(bib_folder)){
    dir.create(bib_folder)
    con <- file(index_file)
    writeLines(index_str, con)
    close(con)
  }

}
