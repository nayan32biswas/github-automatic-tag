# Add github tag with actions

## Tag part

The tag will and should have three parts like `v1.2.3`.

- **major** the first number of that will indicate major version release.
- **minor** the second number of that will indicate a minor version release.
- **patch** the third number that will indicate the patch version release.

## Auto Tag

In this repository, we will implement auto-tagging with GitHub actions. Each push on the main branch will generate a new tag automatically with GitHub actions. The tag number increment will depend on the commit message.

- If the commit message contains a **major** word then the first number of the tag will be increased.
- If the commit message contains a **minor** word then the second number of the tag will be increased.
- Otherwise, the third number of the tag will be increased.
