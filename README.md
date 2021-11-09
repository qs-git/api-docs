# API docs platform
This platform enables creation of static api docs. It already includes some static and api
code files that can be used as an example while creating desired docs. The platform is based on slate framework. Mor information can be found [here](https://github.com/slatedocs/slate). There wiki can be found [here](https://github.com/slatedocs/slate/wiki) for detailed instructions.

## Getting started
- Clone repository by running command `git clone git@github.com:qs-git/api-docs-framework.git <desired-folder>`
- Re-initialize the git tracking by running command `rm -rf .git` and `git init`
- cd into desired folder by running command `cd <desired-folder>`
- Spin up docker environment for local development by running `./docsy.sh serve`
- The project can then be accessed at [http://127.0.0.1:4567](http://127.0.0.1:4567)
- Once you are happy with your changes, then commit your changes and run the command `./docsy.sh deploy`

