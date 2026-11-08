//! Platforms' colours for zgx's widgets: existing tokens a desktop host
//! sets as the system's (`Themes::set_system_tokens`), which an app's theme
//! overrides. (Their shapes are constants zgx is built with: `OverlayLook`.)

use super::{TokenId, TokenInput, tok};

/// GNOME's: a menu item's highlight the text at 10% over the menu
/// (libadwaita's `$selected_color`, `currentColor` 10%).
pub fn linux_look() -> Vec<(TokenId, TokenInput)> {
    let value = |value: &str| TokenInput::parse(value).expect("a token value");
    vec![(
        tok::MENU_HOVER.0,
        value("over({menu.bg}, alpha({text.primary}, 0.1))"),
    )]
}
