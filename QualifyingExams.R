########################################################
### Qualifying Exams
### 20201222
### SPT
########################################################

# Reset global environment
rm(list=ls())

# Set working directory
setwd("/Users/simontye/Documents/Research/PhD/QualifyingExams/")

# Load files
notes <- read.csv(file = "QualifyingExams.csv", head = TRUE, sep = ",")

########################################################

# Question function
selection <- function(notes, n) {
  rows <- nrow(notes)
  sample(1:rows, 1, replace = FALSE)
}

# Concept function
concept <- function(notes, question) {
  concept <- notes[question, 1]
  answer  <- print(concept, max.levels = 0)
}

# Definition function
definition <- function(notes, question) {
  definition <- notes[question, 5]
  answer     <- print(definition, max.levels = 0)
}

# Citation function
citations <- function(notes, question) {
  citation <- notes[question, 3]
  answer   <- print(citation, max.levels = 0)
}

# Organism function
organisms <- function(notes, question) {
  organism <- notes[question, 4]
  answer   <- print(organism, max.levels = 0)
}

########################################################

# Pick question
question <- as.numeric(selection(notes))

# Ask question
concept(notes, question)

# Give definition
definition(notes, question)

# Give citations
citations(notes, question)

# Give organisms
organisms(notes, question)

########################################################
