function Sdamping = Sdamping(atom, eigen, DampingRate)
    gs_lv_dim = atom.sw.ge * atom.sw.ge;
    Sdamping.G=zeros(gs_lv_dim, gs_lv_dim);
    S=eigen.operators.S;
    Sdamping.G =   DampingRate  * SDmat(S);
end