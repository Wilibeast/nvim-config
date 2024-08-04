# William's Neovim config
## Setup
This config uses Mason for some of the language server and debug adapter setup, its menu can be opened with `:Mason`.

`:Lazy` will open up a GUI for some of the neovim plugins.

If a file doesn't have syntax highlighting use `:TSInstall <language>`.

Please ensure that your terminal config (`.bashrc`/`.zshrc`) has the appropriate variables exported, for example:
- `export JDTLS_HOME=/home/wbence/sdk/Java/jdtls-1.38.0/`

- `export JDTLS_PLUGIN_PATH=${JDTLS_HOME}plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar`

- `export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"`

## Keybinds
### Movement
- "i" enters insert mode
- "a" enters insert mode after cursor
- "o" enters insert on next line

- "u" undo
- "ctrl+r" redo
- "p" paste

- "j" moves down
- "k" moves up
- "h" moves left
- "l" moves right

- "e" moves to end of word
- "b" moves to start of word

- "0" moves to start of line
- "^" moves to start without whitespace
- "$" moves to end of line

- "shift + }" go to next block
- "shift + {" go to previous block
- "shift + l" go to next page
- "shift + h" go to prev page

- "shift + #" go to same words
- "viw" select word under cursor 

- "d" deletes with combo
- "dd" deletes current line

- "v" visual mode (select)
- "ctrl+v" visual block mode (select in block)

- #custom "ca" code action
- "space + ra" renamer
- "space + rf" code references
- "space + fm" format current file
- "space + gt" git status
- "space + gb" git blame
- "shift + k" knowledge about selected

- "ctrl + wq" close selected window

- Toggle terminal alt + i or h
- "ctrl + x" terminal -> nterminal
- "ctrl + direction" move to window at direction

### Marks
- "m + <letter\>" set mark at letter
- " ' + <letter/>" go to mark at letter 
- ":delmarks!" clears all marks

### Recording
- "q + <letter/>" start recording to letter
- "@ + <letter/>" playback macro at letter

### File tree 🌳
1. ctrl + n.
2. Arrow keys to move cursor to a file and return (enter) to open a file.
3. m to mark a file.
4. a to create a new file and type the new file name.
5. c to copy a file.
6. p to paste the file.
7. r to rename a file.
8. ctrl + w + h/l or larrow/rarrow to switch between file tree and editor.

### General
- "ff" find files
- "fz" find in current buffer
- "space fw" find grep
- "ctrl-n" open file viewer
- search with /
	- use "n" to go next and "N" to go back to previous find
- "<line number/> G" go to line number
