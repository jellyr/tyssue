# distutils: language = c++


from libcpp cimport bool
cimport cython
cimport numpy as np

import numpy as np

# import dereference and increment operators
from cython.operator cimport dereference as deref, preincrement as inc


cdef extern from "CGAL/Linear_cell_complex.h" namespace "CGAL":
    cdef cppclass Sheet "CGAL::Linear_cell_complex<2, 3>":
        Sheet()
        bool is_valid()



cdef class PyLCC:
    cdef Sheet *thisptr

    def __cinit__(self):
        self.thisptr = new Sheet()

    def __dealloc__(self):
        del self.thisptr

    def is_valid(self):
        return self.thisptr.is_valid()
