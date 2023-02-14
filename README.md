# SubmodTree.jl

```julia 
using SubmodTree, AbstractTrees
module A
module B
module C
c = 1
end
b = 2
end
module D
d = 3
end
a = 4
end

print_tree(A)
```

```julia-repl
julia> print_tree(A)
Main.A
├─ Main.A.B
│  └─ Main.A.B.C
└─ Main.A.D
```