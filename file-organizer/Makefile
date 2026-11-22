.PHONY: help build deploy

help:
	@echo "Author: Joshua Allen"
	@echo "Build package: make build"
	@echo "Deploy package: make deploy"

build: organize_files.sh sample_files.txt README.md
	zip -r file-organizer.zip organize_files.sh sample_files.txt README.md

deploy: build
	git add file-organizer.zip
	git commit -m "Add File Organizer deployment package"

