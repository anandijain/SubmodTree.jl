using AbstractTrees, SubmodTree, Test
m = SubmodTree
children(only(children(m)))
print_tree(SubmodTree)

ls = collect(Leaves(m))
@info "leaves" ls
@test Set(ls) == Set([SubmodTree.A.B.C, SubmodTree.A.D])
