# Github Action to deploy onto Aptible Deploy

This action runs yarn audit and transforms the output json into a structure for SonarCloud.
The output file will be named `yarnaudit-sonar.json` in the current directory.
Set the `externalIssuesReportPaths` value in `sonar-project.properties`
It should run before SonarCloud is ran.

```bash
sonar.externalIssuesReportPaths=./yarnaudit-sonar.json
```

## Required input and output arguments

## Optional input and output arguments

## Secrets the action uses

## Environment variables the action uses

## Example github actions usage
```yaml
name: Running a command via SSH on an aptible environment


jobs:
  rake:
    runs-on: ubuntu-latest

    steps:
      - name: Run yarn audit
        uses: OralEye/yarn-audit-sonar@master

      - name: SonarCloud Scan
        uses: sonarsource/sonarcloud-github-action@master
        env:
          GITHUB_TOKEN: ${{ secrets.GIT_TOKEN }}
          SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
```
