# TEMPLATE repository for live demos associated with the Data Lab workshop on code review
**TEMPLATE repository** for live demos associated with the Childhood Cancer Data Lab workshop on advanced git topics and analytical code review.

There are several tasks which need to be performed before this workshop begins, as detailed below.

### Protect the `main` branch

Under `Settings -> Branches`, add a new branch protection rule for `main` with the following options turned on:

* _Require a pull request before merging_
  * The nested item _Require approvals_
* _Do not allow bypassing the above settings_
### Filing live demo issues

* The [github action](.github/workflows/file-live-demo-issues.yml) can be manually triggered to file issues.
* When running this action, you can optionally specify two inputs of github usernames to set as assignees.
If you do not provide these inputs, you will have to manually assign the resulting issues.
  * The `demo_lead_username` input should take the username to assign to all issues _except_ [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md).
  * The `demo_support_username` input should take the username to assign _only_ to [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md).

### Creating branches

Two branches will need to be created in advance to support the "Working with branches" live demonstration.
These branches should be created off of `main` and should be named as follows, where `<username>` is the GitHub handle of who will be performing the demonstration, and `<issue number>` is the number of the relevant issue that is filed from the [issue creation GHA](.github/workflows/file-live-demo-issues.yml).
* `<username>/<issue number>-penguins-species-count` is the branch used to address the issue [.live-demo-content/issue-templates/03-working-with-branches.md](.live-demo-content/issue-templates/03-working-with-branches.md).
* `<username>/<issue number>-penguins-species-mass` is the branch used to address the issue [.live-demo-content/issue-templates/04-working-with-branches.md](.live-demo-content/issue-templates/04-working-with-branches.md).
### Filing a PR for live code review

* Whoever is assigned [the issue associated with demonstrating PR review](.live-demo-content/issue-templates/performing-code-review.md) will need to prepare a branch and file a PR, with several commits (whose messages have varying levels of information), that will be reviewed during the live demonstration.
* This branch should ultimately modify the contents of [this baseline notebook](analyses/explore-spotify-variation.Rmd) to match [this updated notebook](.live-demo-content/analyses/explore-spotify-variation-with-UMAPs.Rmd).
* A PR should then be filed to `main`, using the text in [`.live-demo-content/spotify-pr-text.md`](.live-demo-content/spotify-pr-text.md).

### Reference scripts for live demos

Reference scripts for live demos are available in [`.live-demo-content/scripts`](.live-demo-content/scripts).
