from distutils.core import setup
from Cython.Build import cythonize

setup(
    name = "lcc",
    ext_modules = cythonize('*.pyx'),
)
