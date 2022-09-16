# SJCI Robotics Presentations

This repository is a collection of presentations and slides maintained by the SJCI FRC robotics team.

Many of the presentations use [Marp](https://marp.app/) to convert Markdown into different presentation mediums.

## Development

### Pre-Reqs

This requires you have a properly configured Node environment with `npx` running, so the `marp` CLI can be used.

### Generate a New Presentation

To generate a new presentation template, run the following command, where the `<folder>` is the name of the presentation.

```console
./bin/gen-slides.sh my-cool-presentation
```

### Generate Exported Mediums

To generate the powerpoint, presentation, cover image, and PDF for the presentation, run the following command, where the `<folder>` is the name of the presentation.

```console
./bin/export-slides.sh my-cool-presentation
```
