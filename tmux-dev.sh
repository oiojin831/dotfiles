tmux new -s 01-UDFD -c $HOME/Developments/hydrosteel/ \; \
  rename-window firebase \; \
  send-keys 'cd UDFD' C-m \; \
  send-keys 'vim' C-m \; \
  split-window -h -p 34 \; \
  split-window -p 66\; \
  \
  new-window \; \
  rename-window Flutter \; \
  \
  \
  new-window \; \
  rename-window TODOS \; \
  send-keys 'vim -c Goyo -c Limelight0.8 ./README.md' C-m \; \
  split-window -h -p 33 \; \
  select-window -t 1 \; \
  \
  \
  new -s 02-HOTEL-NIGHT -c $HOME/Developments/rollinjoint/hotelnight \; \
  rename-window client \; \
  send-keys 'vim' C-m \; \
  split-window -h -p 33 \; \
  send-keys 'blitz start' \; \
  \
  \
  new -s 03-SPACE-LINK -c $HOME/Developments/ryewool/s-p-a-c-e \; \
  send-keys 'vim' C-m \; \
  rename-window workspace \; \
  split-window -h -p 33 \; \
  send-keys 'yarn dev' \; \
  \
  \
  new -s 08-Blitz -c $HOME/Developments/oiojin831/\; \
  split-window -h \; \
  send-keys 'vim' C-m \; \
  select-pane -t 0 \; \
  \
  \
  new -s 09-DOTFILES -c $HOME/Developments/oiojin831/dotfiles\; \
  split-window -h \; \
  send-keys 'vim tmux.conf' C-m \; \
  select-pane -t 0 \; \
  send-keys 'vim $HOME/.config/nvim/init.vim' C-m \; \
  \
  \
  switch -t 01-UDFD \;
