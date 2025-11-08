# livecode

## Notes
Install `supercollider` and `tmux`.

Then clone development version of [Renardo](https://github.com/e-lie/renardo) to `./renardo`, then:

```
python -m venv .venv
source .venv/bin/activate
cd renardo
pip install --editable renardo_gatherer
pip install --editable renardo_lib
pip install --editable FoxDotEditor
pip install --editable renardo
pip install ipython
cd ..
```

Then start `renardo` for initial download of samples / test that it works.

Check that the `Renardo` quark is installed in SuperCollider (plus, optionally, `StageLimiter`).

Then `./start_session.bash` or `./start_session.bash $file` to start `hx` with `$file` open already.

## Usage

You can now send code from helix to the ipython instance started by creating a selection, and using the binding provided to send code directly to ipython and thus Renardo.
