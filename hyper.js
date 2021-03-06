module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 16,
    fontFamily: `"Iosevka"`,
    cursorColor: 'rgba(248,28,229,0.75)',
    cursorShape: 'BLOCK',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: `
      xscreen a {
        color: rgb(86, 173, 183);
      }
    `,
    termCSS: '',
    padding: '12px 14px',
    updateChannel: 'canary',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff',
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '/usr/local/bin/fish',
    summonShortcut: 'Cmd+Ctrl+Option+Shift+t',
    hyperlinks: {
      clickAction: 'ignore',
    },
  },

  plugins: [
    'hyperterm-deep-space',
    'hyper-font-smoothing',
    'hyperterm-1password',
    'hyperterm-summon',
    'hyper-pane',
  ],

  localPlugins: [],
}
