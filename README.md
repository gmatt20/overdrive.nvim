## The Ultimate Minimalist Neovim Config, Supercharged by LazyVim 💤

Looking for a **matte black electric guitar vibe** for your IDE? Meet OVERDRIVE.nvim — a sleek, aggressive, and performance-tuned Neovim setup that looks as good as it feels.

<img width="1000" height="869" alt="dashboard" src="https://github.com/user-attachments/assets/914934b1-d725-45b0-a7b2-c280d11db049" />

---

<img width="1000" height="849" alt="demo" src="https://github.com/user-attachments/assets/a6597554-6084-4382-86b1-a862fdd8fabf" />

## ⚡ Features

- **Custom Theme:** Handcrafted `lackluster.nvim` for a unique look
- **AI Integration:** Chat and code with `CopilotChat.nvim` & `Copilot.lua`
- **LSP Ready:** Out-of-the-box support for C++ (Clangd), Python (Pyright), and TypeScript (vtsls)
- **File Explorer:** Lightning-fast navigation with `snacks.explorer`
- **Minimal Bloat:** Focused on speed, clarity, and productivity
- **Highly Customizable:** Easily extend and personalize your setup
- **Powered by Neovim & LazyVim:** Built using the LazyVim plugin manager for maximum flexibility and performance

## 🚀 Quick Start

1. **Backup your old config**  
   (Recommended before installing. Based on LazyVim's instructions.)

   ```bash
   # Linux / MacOS (unix)

   # Required
   mv ~/.config/nvim{,.bak}

   # Optional (cleans cache & plugins)
   mv ~/.local/share/nvim{,.bak}
   mv ~/.local/state/nvim{,.bak}
   mv ~/.cache/nvim{,.bak}
   ```

2. **Clone OVERDRIVE.nvim**

   ```bash
   git clone https://github.com/gmatt20/overdrive.nvim.git ~/.config/nvim
   ```

3. **Launch Neovim**

   ```bash
   nvim
   ```

4. Run `:Lazy sync`

5. Delete the .git folder (optional)

```bash
# Linux / MacOS (unix)
rm -rf ~/.config/nvim/.git
```

Enjoy your new, high-voltage Neovim experience!

## ⚠️ The Nuclear Option (Uninstall)

```bash
# Linux / MacOS (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```
