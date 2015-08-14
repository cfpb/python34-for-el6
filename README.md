# Python 3.4 RPM built for RHEL 6.5

**Description**:  RHEL 6.5 comes with Python 2.6 installed.  This project contains a SPEC file for building an RPM that compiles Python 3.4 and installs pip and virtualenv.

## Dependencies

Currently, only RHEL and CentOS 6.5 have been tested.  Other dependencies are installed
via the boostrap.sh script.

## Installation

### Build the RPM using Vagrant

1. Once the repo has been cloned, run "vagrant up" to create the bulid VM
2. Run "vagrant ssh" to connect
3. CD to ~/rpmbuild
4. Run "rpmbuild -ba SPECS/python34-alt.spec"

### Build the RPM on a server
1. Once the repo has been cloned, run "sh ./bootstrap.sh"
2. CD to ~/rpmbuild
3. Run "rpmbuild -ba SPECS/python34-alt.spec"

### Install the RPM

Install the built RPM by running "sudo yum install RPMS/x86_64/python27-3.4.3-1.el6.x86_64.rpm"

## Configuration

Edit the SPEC file to make changes to the build configuration.

## Usage

1. Run /usr/local/bin/virtualenv ~/.virtualenvs/{ your_venv }
2. Activate using "source ~/.virtualenvs/{ your_venv }/bin/activate"
3. python -V should return 3.4.3
4. Install packages using pip, and code!

## Known issues

- Currently, a number of compilation errors are displayed while the RPM is being
built.  This is related to the rpmbuild process itself attempting to binary
compile various Python 3.4 packages using the system Python (2.6).  So far,
this has not had any affect on the usability of the Python install.

## Getting help

If you have questions, concerns, bug reports, etc, please file an issue in this repository's Issue Tracker.

## Getting involved

To contribute, please see [CONTRIBUTING](CONTRIBUTING.md).

----

## Open source licensing info
1. [TERMS](TERMS.md)
2. [LICENSE](LICENSE)
3. [CFPB Source Code Policy](https://github.com/cfpb/source-code-policy/)

----
