# HiFiBerry Setup

After installing the card and booting into Raspbian
you will need to update the boot configuration (see `boot-config.patch`).

1. create a backup copy: `cp /boot/config.txt /boot/config.txt.backup`
2. open `/boot/config.txt` in an editor (e.g. vim)
3. add `dtoverlay=i2s-mmap`
4. add `dtoverlay=hifiberry-dacplus`
5. comment out the line with `dtparam=audio=on`
6. save the changes & reboot

Running `aplay -l` should list the HiFiBerry soundcard:

```
**** List of PLAYBACK Hardware Devices ****
card 0: sndrpihifiberry [snd_rpi_hifiberry_dacplus], device 0: HiFiBerry DAC+ HiFi pcm512x-hifi-0 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

You should now be able to play audio.

```shell
mplayer music/zarathustra.aac
```
