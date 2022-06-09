package fol;

public class And implements FOL {
    public FOL left;
    public FOL right;

    public And(FOL visitTerm, FOL visitTerm1) {
        left = visitTerm;
        right = visitTerm1;
    }

    @Override
    public String toString() {
        return left.toString()+" ∧ "+ right.toString();
    }
}
