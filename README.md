# Useful Github Actions

This repository contains set of useful Github Actions.

## Usage

This repository has numbers of branches that are used to store different actions performing different tasks. To use an action, you need to specify the branch name in the `uses` field of the action.

For example, if you want to use the `forward-merge` action, you need to specify the branch name `forward-merge` in the `uses` field of the action.

```yaml
uses: 01Joseph-Hwang/gh-actions@forward-merge
```

## Reference

- https://docs.github.com/en/actions/quickstart
- https://stackoverflow.com/questions/69705595/github-actions-multiple-action-in-a-single-repo
- https://www.jameskerr.blog/posts/sharing-steps-in-github-action-workflows/

