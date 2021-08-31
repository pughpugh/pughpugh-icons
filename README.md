# pughpugh Icon Fonts

Icon fonts for an my projects

![Icon Fonts](icons.png?raw=true)

## Usage

Install

```bash
npm install pughpugh-icons
```

Import the css or include it in some other fashion.

```javascript
import "pughpugh-icons/build/icons.css";
```

Icon names are prefixed with `pp`.

```html
<i class="pp-email" />
```

## build

All highly specific to OSX

### Setup

Install [Sketch](https://www.sketch.com/)

Install `npm install fantasticon`

### Editing Icons

Edit `Icons.sketch`.

Icons generally need to be contructed from paths. Shapes can be converted with "Convert to Outlines".

### Building fonts

This script will export all icons from the sketch file as svg and then convert to icon-fonts.
It will also update any preview files/images.

```bash
./bin/build.sh
```

Preview the output with

```
open ./build/icons.html
```
