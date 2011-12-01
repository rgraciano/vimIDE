# My .vimrc and various plugins #

## What you're looking at

I use vim as an IDE of sorts, as well as my everyday editor for just about everything.
What you're seeing here is my own vimrc, which has a collection of useful features
and (in my opinion) must have settings to make life easier.

## Why these plugins?

I work with these plugins on a daily basis, and they interoperate well together:

    * I tried all of the major tabbar plugins, and while the one I chose is rather.. let's say..
    "not polished", with various code problems and documentation mistakes as well as copy/paste
    issues, it works very well with NERDtree. The other tab plugins I tried can have issues when
    you use NERDtree and vertical splits, but this one works nicely and supports my major use,
    which is lots of buffer opens and closes with my custom keys, while switching between
    buffers with C-TAB and C-SHIFT-TAB.

    * Command-T is absolutely awesome.  Seriously.  This is a killer feature for me.  If you're not
    using this all the time, you should start.

    * I tried several debugging plugins, and this is the only one I found remotely usable.  I did
    notice that the way it bound the comma key slowed down searching backwards on the current line
    (normal comma function), so I rebound that.

    * NERDtree and taglist both do a very nice job, and IMO are best in class.

    * pathogen, linked up to github. No explanation required.

## Why these settings?

    * I like to open tons of buffers and close them quickly. C-D kills a buffer, C-X closes a window,
      and the movement keys (C-H/J/K/L) navigate between windows.

    * Relative line numbering is the bee's knees. Really, think of all the commands that are made easier
      when you can just glance and see how far away you are from your target line.

    * Auto-complete is modded to be easier and much more "IDE-like".

    * Search is also modernized, with custom IDE-like grep, better highlighting, and smart-casing.

    * Quick and easy ctags generation - just hit \r to run your ctagsgen.sh script *without* locking
      up the IDE.

