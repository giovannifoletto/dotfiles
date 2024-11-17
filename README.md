# Dotfiles
@author: giovani foletto
@eta   : 23/06/2021

## Contiene:
- tmux config file
- vim config file
- vim plugin directory


# Installing Z3 and Angr (problematic)

On the system is present `conda`:

Create the two env: (these comes preinstalled.) 
ATTENTION: make particular attention to angr env python version.
```bash
conda create -n z3 -y
conda create -n angr python=3.10 -y
```

When necessary, activate them.

To install packages, we can run: 

```bash
# inside conda env
conda activate -n z3; python3 -m pip install z3-solver
conda activate -n angr; python3 -m pip install angr
```

Could be useful to have BARF in both env.

Other to add: (use tag=optional)

- commix (https://github.com/commixproject/commix.git): is a automatic command injection tester. Add to install-tools.
- https://github.com/nccgroup/featherduster: crypto attacks made simple