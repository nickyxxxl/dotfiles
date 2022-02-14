#aliasses
alias youtube-dl='yt-dlp'
alias youtube-mp3='yt-dlp -x --audio-format="aac" --prefer-ffmpeg'
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias rcon='mcrcon -H 192.168.2.128 -p minecraft'
alias weather='curl wttr.in/Eindhoven'
alias rsync='sudo rsync -ahr --info=progress2'
alias sudo='doas'
alias ls='ls --color'

#merge subtitles
merge(){
	ffmpeg -i $1 -i $2 -c copy -c:s mov_text out.mp4
}

#download big file through tor
torcurl(){
	curl -C - -L -O --socks5-hostname 127.0.0.1:9050 $1
}

#change tablet settings
osumode (){
	target=$(xsetwacom --list devices | grep 'STYLUS' | sed 's/.*\([0-9][0-9]\).*/\1/')
	xsetwacom --set $target MapToOutput 1920x1080+1280+0
	xsetwacom --set $target Area 0 0 19200 10800
}
drawmode (){
	target=$(xsetwacom --list devices | grep 'STYLUS' | sed 's/.*\([0-9][0-9]\).*/\1/') 
	xsetwacom --set $target MapToOutput 1920x1080+1280+0
	xsetwacom --set $target ResetArea
	xsetwacom --set $target Button 3 "key +ctrl z -ctrl"
	target=$(xsetwacom --list devices | grep 'Pad' | sed 's/.*\([0-9][0-9]\).*/\1/') 
	xsetwacom --set $target Button 1 "key 1"
	xsetwacom --set $target Button 2 "key 2"
	xsetwacom --set $target Button 3 "key 3"
	xsetwacom --set $target Button 8 "key 4"
	xsetwacom --set $target Button 9 "key 5"
	xsetwacom --set $target Button 10 "key 6"
	xsetwacom --set $target Button 11 "key 7"
	xsetwacom --set $target Button 12 "key 8"
	xsetwacom --set $target Button 13 "key 9"
	xsetwacom --set $target Button 14 "key a"
	xsetwacom --set $target Button 15 "key b" 
	xsetwacom --set $target Button 16 "key c" 
}

#(ARCH ONLY) automate AUR package install
aurget(){
	git clone https://aur.archlinux.org/$1 && cd $1
	makepkg -si
}
