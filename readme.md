Code Kata Generator Tool
===============================================================================

## Warning: Work in Progress

This tool doesn't work. At all. So don't use it right now.

This is a personal tool I am writting in order to help do daily katas without
all the boilerplate work. Eventually, I want to have a repo 

Usage
-------------------------------------------------------------------------------

`kata g ruby -d integer_stack -f stack -t rspec -s codeeval`

### Generate

`kata g`  
`kata generate`

#### Options

##### Language

__Required__ - Default set in `lib/settings.json`

`kata g <language>`  
`kata g --lang <language>`

The lanaguage in which you are generating code for

##### Directory Name

__Required__

`-d [DIRECTORY_NAME]`  
`--dir [DIRECTORY_NAME]`

What you want to name your directory. 

Default: [language_name]_[time]

##### File

Optional - default is the same as Directory Name

`-f [FILE_NAME]`  
`--file [FILE_NAME]`  

##### Testing Framework

Optional - default is decided when official language support is added

`-t [TESTING_FRAMEWORK]`  
`--test [TESTING_FRAMEWORK]`

If you add you own lanaguage, you must set the testing framework and testing
command in `lib/settings.json`  


##### Source Citation

Optional - Default is nil

`-s [SOURCE]`  
`--src [SOURCE]`

This credits the source and builds a link to that challenge online on the specific kata readme

Languages
-------------------------------------------------------------------------------

### Ruby
-------------------------------------------------------------------------------

Default Version - ~> 2.0  
Default Testing Framework - RSpec


### Javascript
-------------------------------------------------------------------------------

Default Version - ~> ES5  
Default Testing Framework - Jasmine


### Go
-------------------------------------------------------------------------------

Default Version - ~> 1.1  
Default Testing Framework - Testing Package, Table Driven Testing


Goals
-------------------------------------------------------------------------------

- Lanugage to do (in order of my preference)
    - Go
    - Elixir
    - Objective C
    - Python
    - Scala

FAQ
-------------------------------------------------------------------------------

### Why are you writing this in Ruby?

In all honesty, this would probably be much better off written in bash or something lower level. Especially since this is basically a glorified code generator and process starter.

I am comfortable in Ruby though, and until more people than me use it, I'll stick to Ruby.

### Why are there FAQs when no one even knows about this right now?

I'll be asking the questions around here! (burn out from wordpress $h*t)
