PHONY: build
build:
	gox -osarch="darwin/amd64 linux/amd64" -output="bin/{{.Dir}}_{{.OS}}_{{.Arch}}"