# Stacking branches live demonstration

## Before demonstration

Before the live demo, slides will have covered only the concept of `git` branch stacking, as well as why it's a challenging thing to do in forks.
There are no new `git` commands that need to be introduced for this live demo.

Note that the second section of the demo should be conducted from a _fork_ of the demo repository.
Depending on the given workshop audience, this fork can be set up in advance of the workshop, or you can show creating and cloning the fork during the workshop, which includes setting the upstream repository: `git remote add upstream git@github.com:<upstream account>/<upstream repo>`.
## Live demonstration

### Part 1: How to stack branches

> This first part of the demonstration is based around one issue with two related tasks:
>   * Task 1: Write a `utils.R` script with a function that, given a data frame and two numeric variables, builds a regression model and returns the `broom::tidy()` output
>   * Task 2: Write a script called `model-penguins.R` that sources `utils.R`, builds a model from penguin variables, and exports results to a TSV

* First, run `git pull` in `main` to ensure I am synced up before I start new work
* Create and switch to first branch: `git switch -c <username>/<issue #>-utils-linear-model`
* Perform one `add/commit/push` (with `status` and `diff`) to create the `utils.R` script
  * For this first commit, _do not_ include documentation of this function
* Open PR GitHub, but don't spend much time crafting a perfect PR as that is not the point of this demo
  * In the background, co-instructor will leave a review that the code needs docs
* While still in `<username>/<issue #>-utils-linear-model`, create and switch to branch `<username>/<issue #>-build-penguin-model`
* Perform one `add/commit/push` (with `status` and `diff`) to create the `model-penguins.R` script
* File a PR in GitHub, setting the base branch to `<username>/<issue #>-utils-linear-model`
  * Demonstrate how the overall file diff is different depending on the base
* Return to original PR where I see a review comment
* Back on command line, return to `<username>/<issue #>-utils-linear-model`, implement requested changes, and `add/commit/push`.
* PR is now accepted and merged, and we _delete_ the remote branch `<username>/<issue #>-utils-linear-model`
* Return to other open PR with the script that performs penguin modeling
  * Note that the base has changed to `main` now that the remote branch was deleted
  * Also note that the branch is no longer up-to-date with `main`.
  Explain two ways to handle this (but ultimately do the first one):
    * Within GitHub, merge `main` into `<username>/<issue #>-build-penguin-model`
    * Locally, you can checkout `main`, pull down, checkout `<username>/<issue #>-build-penguin-model`, merge on command line, and then push.
* The second PR can now be approved and merged into `main`.
Ensure this is completed, since this code is required for part 2 of this demo.


### Part 2: How to approximate stacking when you are working in a fork

> The second part of the demonstration is based around a different issue with two related tasks:
>   * Task 1: Add a function to the `utils.R` script that, given a data frame and two numeric variables, exports a scatterplot
>   * Task 2: Modify the script `model-penguins.R` to make and export a scatterplot of variables used in the regression

* Explain again that stacking won't work well, _unless_ you want to have a review performed in your fork.
  * If you want the full project history including reviews to be present in the `upstream` repository, this will not meet your needs
* Brief detour back to slides to show a schematic of what we are going to do in this demo & relationship among branches
* Navigate via command line to the _fork_ of the repo, and ensure the `main` branch is up-to-date with `upstream/main`
* Create and enter branch off of `main`: `<username>/<issue #>-full-work`
* Perform three `add/commit` cycles (can `push` as well):
  * First, add the plotting function to the `utils.R` script
  * Second, use the function in the `model-penguins.R` script
  * Third, run the script to export PNG to `plots/`
* View the `git log`, and identify which commits should be "stacked" on which: The latter two commits should be "stacked" on the first commit.
This means we need to divvy up this code up into two separate branches.
  * Emphasize that these small, focused commits allow us to cherry pick individual tasks for each issue, i.e., issue tasks are not muddled together in the same commit.
* Return to `main` and create/enter first branch for cherry picking: `git switch -c <username>/<issue #>-scatterplot-function`
* `git cherry-pick` the first commit into this branch
* Return to `main` and create/enter second branch (`git switch -c <username>/<issue #>-penguins-scatterplot`), and cherry-pick the second two commits
* Now we have two branches which are _sort of_ stacked (show with `git branch -a`), at least in the scope of their work, and a third which encompasses all work for posterity, which we don't delete just in case
* The two issue-specific branches can be filed to the `upstream` repo's `main` branch, with sufficient context in each PR to help reviewers understand how the PRs are related
