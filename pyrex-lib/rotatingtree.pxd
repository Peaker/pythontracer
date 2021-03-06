# Written by Eyal Lotem <eyal.lotem+pt@gmail.com>
# Copyright (2007-2008)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

cdef extern from "rotatingtree.h":
    ctypedef struct rotating_node_t:
        void *key
        rotating_node_t *left
        rotating_node_t *right
    rotating_node_t *EMPTY_ROTATING_TREE
    ctypedef int (*rotating_tree_enum_fn)(rotating_node_t *node, void *arg)
    void RotatingTree_Add(rotating_node_t **root, rotating_node_t *node)
    rotating_node_t* RotatingTree_Get(rotating_node_t **root, void *key)
    int RotatingTree_Enum(rotating_node_t *root, rotating_tree_enum_fn enumfn, void *arg)
