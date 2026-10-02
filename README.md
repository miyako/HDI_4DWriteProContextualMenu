# 4DWriteProContextualMenu

![platform](https://img.shields.io/badge/platform-4D%2021.1%2B-blue) ![type](https://img.shields.io/badge/type-HDI%20(How%20Do%20I)-lightgrey) ![license](https://img.shields.io/badge/license-MIT-green)

**How do I create my own 4D Write Pro contextual menu?**

A 4D **HDI** (How Do I) example showing how to replace the default 4D Write Pro contextual menu with a custom one built from standard actions.

## Overview

The demo form displays a 4D Write Pro area loaded from `Resources/MyWritePro.4wp`. Right-clicking inside the area opens a custom menu (copy, cut, paste, font style, size, colour, alignment, spell check, hidden characters) instead of the built-in one.

## Key techniques

| Topic | Where | Notes |
|-------|-------|-------|
| Custom contextual menu | `Methods/createMenu.4dm` | `Create menu` + `APPEND MENU ITEM` with `ak standard action title`, bound with `Associated standard action`. Titles and enabled state are managed by 4D. |
| Restricted choices in a sub-menu | `Methods/createSizeMenu.4dm` | Standard action with a parameter (`fontSize?value=12pt`) limits the size menu to 10, 12, 14 and 16 pt. |
| Showing the menu | `Forms/DemoForm/ObjectMethods/WriteProArea.4dm` | `Dynamic pop up menu` on `On Clicked` + `Contextual click`; the area's own menu is disabled with `"contextMenu": "none"`. |
| Menu lifecycle | `Forms/DemoForm/method.4dm` | Menus are created on `On Load` and released with `RELEASE MENU` on `On Unload`. |

## Project modernisation

This HDI follows a shared set of conventions used across all HDI repositories:

- **Startup**: `00_Start` runs through `CALL WORKER` and a non-blocking `DIALOG(...; *)`, reuses an already open splash window, and keeps state in `Form` (no interprocess variables).
- **Localisation**: all UI text uses XLIFF (`:xliff:` references and `Localized string`), in English and Japanese under `Resources/{en,ja}.lproj`.
- **Language**: `var` / `#DECLARE` instead of `C_*` directives.
- **Menu bar**: standard actions (`quit`, `copy`, `paste`, ...) instead of wrapper methods.
- **Appearance**: dark mode via `prefers-color-scheme` in `styleSheets.css`; macOS Tahoe Liquid Glass button heights (27px) vs classic (23px) in `styleSheets_mac.css`.
- **Methods**: helper methods are `invisible` so only the entry point appears in the Run Method dialog.
- This project has no listboxes, so the listbox display defaults (`truncateMode`, `resizingMode`) do not apply.

## Requirements

- 4D 21.1 or later (project mode)
- 4D Write Pro licence

## Usage

1. Open `Project/HDI_4DWriteProContextualMenu.4DProject` with 4D.
2. Run **File > Demo** (method `00_Start`).
3. Right-click inside the document to try the custom menu.

## Structure

```
Project/Sources/
  Forms/HDI/            splash dialog
  Forms/DemoForm/       Write Pro area and contextual click handling
  Methods/              00_Start, createMenu, createSizeMenu
  styleSheets*.css      dark mode and platform styling
Resources/
  MyWritePro.4wp        sample document
  {en,ja}.lproj/        XLIFF localisation
```

## References

- Blog post: https://blog.4d.com/create-your-own-contextual-menu-for-4d-write-pro/
- Original download (4D v16 R3): https://download.4d.com/4DBlog/Tips/4D_v16R3/4DWriteProContextualMenu_4Dv16R3.zip
- Standard actions: https://developer.4d.com/docs/FormObjects/properties_Action#standard-actions
- 4D Write Pro: https://developer.4d.com/docs/WritePro/overview

## Origin

Originally a 4D v16 R3 binary (`.4DB`) HDI database, converted to a 4D project with 4D 21 and modernised with the help of GitHub Copilot.

## License

See [LICENSE](LICENSE).
