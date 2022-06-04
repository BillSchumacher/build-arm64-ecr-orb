# build-arm64-ecr-orb

[![CircleCI Build Status](https://circleci.com/gh/BillSchumacher/build-arm64-ecr-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/BillSchumacher/build-arm64-ecr-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/billschumacher/build-arm64-ecr-orb.svg)](https://circleci.com/orbs/registry/orb/billschumacher/build-arm64-ecr-orb) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/BillSchumacher/build-arm64-ecr-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)

See the official ECR orb for setup details. Envvars are required. 

---

## Resources

[CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/billschumacher/build-arm64-ecr-orb) - The official registry page of this orb for all versions, executors, commands, and jobs described.

### How to Contribute

We welcome [issues](https://github.com/BillSchumacher/build-arm64-ecr-orb/issues) to and [pull requests](https://github.com/BillSchumacher/build-arm64-ecr-orb/pulls) against this repository!

### How to Publish An Update
1. Merge pull requests with desired changes to the main branch.
    - For the best experience, squash-and-merge and use [Conventional Commit Messages](https://conventionalcommits.org/).
2. Find the current version of the orb.
    - You can run `circleci orb info billschumacher/build-arm64-ecr-orb | grep "Latest"` to see the current version.
3. Create a [new Release](https://github.com/BillSchumacher/build-arm64-ecr-orb/releases/new) on GitHub.
    - Click "Choose a tag" and _create_ a new [semantically versioned](http://semver.org/) tag. (ex: v1.0.0)
      - We will have an opportunity to change this before we publish if needed after the next step.
4.  Click _"+ Auto-generate release notes"_.
    - This will create a summary of all of the merged pull requests since the previous release.
    - If you have used _[Conventional Commit Messages](https://conventionalcommits.org/)_ it will be easy to determine what types of changes were made, allowing you to ensure the correct version tag is being published.
5. Now ensure the version tag selected is semantically accurate based on the changes included.
6. Click _"Publish Release"_.
    - This will push a new tag and trigger your publishing pipeline on CircleCI.