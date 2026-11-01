# Pattern Studio utilities

A small, intentionally unfinished home for learner-owned drawing, pattern, and data experiments. The starter gives you a local page, a drawing surface, a Nix development shell, and one small check. It does not contain a finished project or prewritten worksheet answers.

## On NixOS

```sh
git clone https://github.com/sahastasai/pattern-studio-utils.git
cd pattern-studio-utils
nix --extra-experimental-features 'nix-command flakes' develop path:.
bun run dev
```

Open the local address printed in the terminal. Stop the server with `Ctrl+C`. In the same development shell, run `bun test` to check the starter page. The shell provides Bun and Git for this project without installing them globally.

## Make it yours

- Sketch an idea before changing the page.
- Put browser behavior in `src/main.js` and visual choices in `src/studio.css`.
- Add reusable functions when they are useful to a project you chose, and write a test for each behavior you want to check.
- Keep experiments and earlier versions so you can compare your choices.

This repository is public. Keep names, school or home details, personal drawings, and movement recordings out of public commits. Store raw sensor logs locally and ask a parent before sharing any project or data.

The browser project and a microcontroller program are different things: Bun serves this page from the laptop. A board such as micro:bit runs its own device program, and its measurements can later be brought to a local analysis project.

## Later, when Java begins

After the JavaScript readiness check, open the Java toolchain from this folder:

```sh
nix --extra-experimental-features 'nix-command flakes' develop path:.#java
```

The `java` shell adds the Java 17 compiler/runtime while keeping Bun and Git available. A Java file can live in `java-lab/`; compiled `.class` files are ignored by Git.
