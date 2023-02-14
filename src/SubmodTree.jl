module SubmodTree
using AbstractTrees

function submods(m)
    ns = names(m; all=true, imported=true)
    filter!(!=(nameof(m)), ns)
    ms = Module[]
    for n in ns
        try
            x = getproperty(m, n)
            if x isa Module && nameof(m) ∈ fullname(x)
                push!(ms, x)
            end
        catch
        end
    end
    ms
end

AbstractTrees.children(m::Module) = submods(m)

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

export submods
end # module SubmodTree
