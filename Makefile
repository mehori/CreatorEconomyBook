#
# Makefile for Markdown --> ICML files
# make sure there are no spaces in the path to the Markdown file
#
MD_FILES := $(wildcard Part*/*/index.md)
ICML_FILES := $(patsubst %.md,%.icml,$(MD_FILES))

all: $(ICML_FILES)

%.icml: %.md
	pandoc $< --to=icml --standalone -o $@

clean:
	rm -f $(ICML_FILES)
