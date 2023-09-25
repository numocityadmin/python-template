## Recommended step for unit testing

If your tests are in separate folder then add an  `__init__.py` file to the test folder to make it a package. This simple step will ensure that the test folder is recognized as a package and can be easily imported.

To add an `__init__.py` file, simply create a new file named `__init__.py` in the test folder where the test files are stored. You can leave this file empty, or include any necessary initialization code for your tests.

## Recommended step for mutation testing 

Execute the `mutatest.yml` workflow manually, to discover opportunities of test-improvements.
