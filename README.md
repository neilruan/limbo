# Limbo
Token Preseeding Smart Contracts for Behodler.

## Setup
This project uses a Docker image to orchestrate testing and compilation via hardhat. Run

```
npm run docker:rebuild
```
in order to build the image locally. Then to test and compile code,

```
npm test
npm run build
```
respectively.

## Testing
The tests include a coverage.md that will detail with a checkbox whether a particular test case has been adequately covered.