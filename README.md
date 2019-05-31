# cc-wiki
CCDEX wiki: https://ccdex.top/wiki
***
# Install requires
## Install/Check Python
`python --version`

## install pip
If you're using a recent version of Python, the Python package manager, pip, is most likely installed by default. However, you may need to upgrade pip to the lasted version:

pip install --upgrade pip

If you need to install pip for the first time, download [get-pip.py](https://bootstrap.pypa.io/get-pip.py). Then run the following command to install it:

`python get-pip.py`

## Installing MkDocs

Install the mkdocs package using pip:

`pip install mkdocs`

You should now have the mkdocs command installed on your system. Run mkdocs
--version to check that everything worked okay.

`mkdocs --version`
***
# Building

That's looking good. You're ready to deploy the first pass of your MkLorum documentation. First build the documentation:

`make all`

This will create a new directory, named site.

# test
start the server by running the mkdocs serve command:

cd docs

`mkdocs serve`

Open up http://127.0.0.1:8000/ in your browser, and you'll see the default home page
***
# Deploying

The documentation site that you just built only uses static files so you'll be able to host it from pretty much anywhere. GitHub project pages and Amazon S3 may be good hosting options, depending upon your needs. Upload the contents of the entire site directory to wherever you're hosting your website from and you're done. For specific instructions on a number of common hosts, see the Deploying your Docs page.

