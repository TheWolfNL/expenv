expenv - Expand environment variables
======
Expenv replaces ${var} or $var in the input to the values of the current environment variables. Supports stdin/stdout and files.

Installation
-----
You could use one of the snippets below or go to the [releases page](https://github.com/TheWolfNL/expenv/releases) and select the proper binary file, make sure to add it to your path.

Installer
```
curl -o- -L https://raw.githubusercontent.com/TheWolfNL/expenv/master/installer.sh | bash
```

Examples
-----

```bash
$ expenv -f inputfile > outputfile
$ expenv < inputfile > outputfile
$ expenv -i -f inputfile // Replace inplace
```

Example input:
```
My PWD is $PWD
Whoami: ${USER}
I'm using $TERM
Expand $empty but don't expand $$empty
Don't expand $(echo empty)
```

As mentioned in the above example, two special cases exist:

* `$$` is converted to `$`, allowing you to pass in literal-dollar-signs
* `$(` is not converted, allowing your input to contain subshell like behaviour

Motivation
-----

I need to make config files more dynamic using environment variables. In a docker environment this is a big issue for me.

Contribution
-----

Feel free to make a pull request. For bigger changes create a issue first to discuss about it.


License
-----

See [LICENSE](LICENSE) file.
