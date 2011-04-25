# Cukebox

Thanks to [Mark Ryall](https://github.com/markryall) for introducing me to [cucumber](http://cukes.info/) 
and sharing his 'cuke in a box' portable cucumber (with jruby).

I often have to work on PC's with limited access 
to install software—the 'Standard Operating Environment' (SOE)—typically 
a network file system, 
Microsoft Office and Outlook, 
and Internet Explorer with access to the Internet 
(except social sites, and downloading files, and any information about video games…)

Let us refer to such environments as _Siberia_,
which I have been lead to imagine as a cold and forbidding place. 
I've never been there. 
It is probably quite beautiful, 
and looks like it on [Wikipedia](http://en.wikipedia.org/wiki/Siberia "Siberia — Wikipedia").
Very cold though! I enjoy healthy temperatures of 25ºC or higher.

Anyway, if you imagine an SOE type environment to be _Siberia_, 
with this repo you can have a _Cukebox in Siberia_. 
Something to sing about!

In other words, you can have a cucumber testing environment with no footprint on a restricted PC.

### Siberia is…

* a windows environment
* restricted access—cannot download or install apps
* USB access is allowed (you can use portable apps)
* java is available (or… isn’t java portable?)

## What does cukebox give you?

Not much actually. It gives you a simple test, performed twice (using watir-webdriver, then webdriver directly).

It includes:

* [wac](https://github.com/aslakhellesoy/wac) for pretty colours on Windows command prompts
* `cuke` a command for Windows systems, which pipes output through wac
* a sample `cucumber.yml` configuration file that generates `report.html` when run.

Strangely, cukebox does *not* include cucumber itself! Which you will need…

### Where is cucumber?

When you’re on a *nix based system, I assume you just install ruby, the cucumber gem, and everything you like.

When you’re visiting _Siberia_, I recommend:

* [JRuby](http://www.jruby.org/)—it’s portable!
* gems:
  * cucumber
  * syntax (highlighting in the HTML reports cucumber generates)
  * [watir-webdriver](https://github.com/jarib/watir-webdriver) (for automating web browser-based testing)
* portable firefox (if firefox is not installed, unless you wish to test only in IE)
* cukebox (you will need to edit the path to portable firefox)
* a command prompt with both jruby and cukebox on the `PATH`

## What do I use cukebox for?

Put it in your path, and run `cuke` (on Windows) when you want to run your cucumber tests.
Cukebox also includes a sample test. Run `cuke` from the main folder to check everything works.
This should run the watir demo using watir-webdriver and then webdriver commands.
You should see coloured output on the prompt, and results updated in `./report.html` 
(this file gets overwritten when running `cuke` with the included tests).

## How do I get a `cuke` command to run on OSX and Linux?

The main purpose of the cuke command is to give you colours (via wac) on Windows. 
Colours work in *nix based terminals. 
But if you want a `cuke` shortcut anyway, just run `alias cuke=cucumber`. 
Put it in your profile (e.g. `~/.bash_profile` on OSX) so it's always available.