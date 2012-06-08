Noncomprehensive Dotfile Archive Network (n.an)
=======
This stores both public and private dotfiles.

### Public dotfiles
Unpack n.an to your home directory; when you do that, the public
dotfiles will be created there, and you can already make updates
to them and commit them.

### Private
Some dotfiles contain private things, like passwords, or things
that are only relevant to one person, like email addresses. These
dotfiles are stored in dotfile-templates. Run `~/bin/mkdotfiles`
(or just `mkdotfiles` because the `.bashrc` adds `~/bin` to
the path) to build them. You will be prompted to fill in the variables,
and the resulting files will be placed in `~`.

### Writing templates
"Templates" just are normal files with variables indicated by
double-curly-brace-enclosed variables. For example, `.gitconfig`
looks like this.

    [user]
    name = {{fullname}}
    email = {{emailaddress}}

Here are the rules.

* Variables are defined by a phrase enclosed in a pair of double curly braces.
* One line have no more than one variable.
* Variables can contain any character aside from a newline, so spaces
  and curly braces are allowed.
