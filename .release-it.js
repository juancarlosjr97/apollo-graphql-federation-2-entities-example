module.exports = {
  plugins: {
    "@release-it/conventional-changelog": {
      header:
        "# Changelog\n\nThis changelog is updated automatically using release-it.\n",
      infile: "CHANGELOG.md",
      preset: {
        name: "conventionalcommits",
        types: [
          {
            section: "Bug Fixes",
            type: "fix",
          },
          {
            section: "Build Changes",
            type: "build",
          },
          {
            section: "Chores",
            type: "chore",
          },
          {
            section: "Code Refactoring",
            type: "refactor",
          },
          {
            section: "Code Style Changes",
            type: "style",
          },
          {
            section: "Continuous Integration",
            type: "ci",
          },
          {
            section: "Documentation",
            type: "docs",
          },
          {
            section: "Features",
            type: "feat",
          },
          {
            section: "Performance Improvements",
            type: "perf",
          },
          {
            section: "Reverts",
            type: "revert",
          },
          {
            section: "Tests",
            type: "test",
          },
        ],
      },
    },
  },
  github: {
    release: true,
    releaseName: "${version}",
  },
};
