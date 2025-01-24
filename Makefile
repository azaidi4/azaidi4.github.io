.DEFAULT_GOAL := create-pr
BRANCH := feat-$(shell date +%b%d%y | tr '[:upper:]' '[:lower:]')

branch:
	git checkout -b $(BRANCH)

pr:
	git checkout -b $(BRANCH)
	echo "Enter your commit message:" && \
	read COMMIT_MESSAGE && \
	git add . && \
	git diff-index --quiet HEAD || git commit -m "$$COMMIT_MESSAGE" && \
	git push origin $(BRANCH)
	@echo "Creating a pull request on GitHub..."
	curl -X POST -H "Authorization: token $(GITHUB_TOKEN)" \
	-H "Accept: application/vnd.github+json" \
	-d '{"title": "Pull Request for $(BRANCH)", "body": "This PR includes the changes made on branch $(BRANCH).", "head": "$(BRANCH)", "base": "main"}' \
	https://api.github.com/repos/azaidi4/azaidi4.github.io/pulls | \
		python -c "import sys, json; import webbrowser; webbrowser.open(json.load(sys.stdin)['html_url'])"


.PHONY: create-pr
