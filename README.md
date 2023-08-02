# 2023-chop-training-demo
Repository for live demos associated with 2023 CHOP Workshop on code review.

To prepare for live demos presented in this workshop, several issues will need to be filed in advance, and one PR will need to be filed in advance.

### Filing live demo issues

* The [github action](.github/workflows/file-live-demo-issues.yml) can be manually triggered to file issues.
* When running this action, you can optionally specify two inputs of github usernames to set as assignees.
If you do not provide these inputs, you will have to manually assign the resulting issues.
  * The `demo_lead_username` input should take the username to assign to all issues _except_ [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md).
  * The `demo_support_username` input should take the username to assign _only_ to [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md).

### Filing a PR for live code review

* Whoever is assigned [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md) will need to prepare a branch and file a PR, with several commits (whose messages have varying levels of information), that will be reviewed during the live demonstration.
* This branch should ultimately modify contents of [this baseline notebook](analyses/explore-spotify-variation.Rmd) to match [this updated notebook](.live-demo-content/explore-spotify-variation-with-UMAPs.Rmd).
* A PR should then be filed to `main`, using _TODO: this forthcoming file which contains the PR comment text._

