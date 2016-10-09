# Tamei

`Tamei (Hebrew adjective, "ritually impure")`

Tamei is a very simple project, it contains packages that rexport symbols from the CL package based on certain properties. It does not add/remove any features to/from common lisp. It purely exists to differentiate.

## The Packages

### Functions grouped by where they are pure or not
- :tamei.functions.pure
- :tamei.functions.impure

### Methods grouped by where they are pure or not
- :tamei.methods.pure
- :tamei.methods.impure

The reason for separating these from functions is that, whilst the standard may say that a given method is pure it can always be implemented in an impure way by another user or system.

### Additional Packages

- :tamei.constants
- :tamei.uncategorized.macros
- :tamei.uncategorized.special-operators

These don't really need to be defined, but I imagined that whoever would be interested in using this project would also want to assess which macros and special forms they want to use. So these packages exist just to make that easy.

## Notes

There will be mistakes in this as it was sorted by hand. If you find mistakes please raise an issue at http://github.com/cbaggers/tamei
