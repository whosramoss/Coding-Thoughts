# 🤔🤔 npm or yarn, Which one ? 

A list of terminal commands and flags to help with `npm` and `yarn`

# 🧠🧠 NPM - persistent and famous

## 📂 install package.json dependencies

```sh
npm install # install package.json dependencies
```

**Shorthand**

```sh
npm i <package>  # install
npm un <package> # uninstall
npm up <package> # update
```

## 📂 List globally installed packages.

```sh
npm list -g --depth=0 # List globally installed packages.

```

## 📂 list available scripts to run

```sh
npm run # list available scripts to run
```

## 📂 update npm

```sh
# update npm
npm install -g npm@latest
# using windows? Then use
npm-windows-upgrade
```

## 📂 flags


`-S` is the same as `--save` not needed in npm 5 `-D` is the same as
`--save-dev`

## 📂 installed version

```sh
npm list # for local packages
```

## 📂 Node Version Manager `nvm`

Say you want to install Node v6.9.1 you would write on the terminal:

```sh
nvm install 6
```

If you have multiple versions of Node.js installed on your workspace,
you can switch to a specific version by writing:

```sh
nvm use 0.10.40
```

Making a node version default

In order to set a default version of node for your workspace, just
type:

```sh
nvm alias default 6
```

Where 6 was the version you wanted to be used as default.

## 📂 Uninstall global package

```sh
npm -g uninstall <name> --save
```

## 📂 Upgrade NPM on Windows

After trying several times to upgrade npm on Windows I found this
whilst poking around.

```sh
npm-windows-upgrade
```

## 📂 Updating global packages

To update global packages individually you can use:

```sh
npm update -g <package>
```

To see which packages need updating use:

```sh
npm outdated -g --depth=0
```

## 📂 npx, one off command

No need to install create react app if you don't want to

```sh
npx create-react-app my-new-app
```

Will use latest create react app to make your new app

## 📂 update all project dependencies

Update dependencies with `npm-check`

```bash
npx npm-check -u
```

# 🧠🧠 Yarn - fast and secure

## 📂 Update dependencies

```bash
yarn upgrade
```

## 📂 displays the location of the yarn bin folder.

```bash
yarn bin
```

## 📂 list installed packages.

```bash
yarn ls
```

## 📂 create-react-app
```bash
yarn create react-app my-app-name
```

☝️ downloads and runs latest `create-react-app` works for other
similarly named pkgs

## 📂 flow

```bash
yarn flow
```

☝️ will run `node_modules/.bin/flow` without you having to add it as a
package.json script.

## 📂 npm ci

The equivalent to `npm ci` for yarn:

```bash
yarn install --frozen-lockfile
```


# 👀👀 CLI Command Comparison

| npm (v5) | yarn |
| ---------------- | ---------------- |
| npm install      |  yarn install    |
| ---------------- | ---------------- |
| (N/A)            | yarn install --flat    |
| ---------------- | ---------------- |
| (N/A)	           | yarn install --har    |
| ---------------- | ---------------- |
| npm install --no-package-lock | yarn install --no-lockfile |
| ---------------- | ---------------- |
| (N/A)	           | yarn install --pure-lockfile    |
| ---------------- | ---------------- |
| npm install [package]  | yarn add [package]    |
| ---------------- | ---------------- |
| npm install [package] --save-dev	| yarn add [package] --dev    |
| ---------------- | ---------------- |
| (N/A)	           | yarn add [package] --peer    |
| ---------------- | ---------------- |
| npm install [package] --save-optional     | yarn add [package] --optional   |
| ---------------- | ---------------- |
| npm install [package] --save-exact    | yarn add [package] --exact  |
| ---------------- | ---------------- |
| (N/A)     | yarn add [package] --tilde   |
| ---------------- | ---------------- |
| npm install [package] --global    | yarn global add [package]    |
| ---------------- | ---------------- |
| npm update --global   | 	yarn global upgrade |
| ---------------- | ---------------- |
| npm rebuild	   | yarn install --force    |
| ---------------- | ---------------- |
| npm uninstall [package]    | yarn remove [package]    |
| ---------------- | ---------------- |
| npm cache clean | yarn cache clean [package]    |
| ---------------- | ---------------- |
| rm -rf node_modules && npm install     | 	yarn upgrade    |
| ---------------- | ---------------- |


