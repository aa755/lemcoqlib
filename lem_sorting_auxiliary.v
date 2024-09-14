(* Generated by Lem from sorting.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.



Lemma perm_1:( ((isPermutationBy beq_nat ([] :list  nat ) [])): Prop) .
Lemma perm_2:( (negb ((isPermutationBy beq_nat [( 2%nat :nat )] []))): Prop) .
Lemma perm_3:( ((isPermutationBy beq_nat [( 2%nat :nat ); 1%nat; 3%nat; 5%nat; 4%nat] [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma perm_4:( (negb ((isPermutationBy beq_nat [( 2%nat :nat ); 3%nat; 3%nat; 5%nat; 4%nat] [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]))): Prop) .
Lemma perm_5:( (negb ((isPermutationBy beq_nat [( 2%nat :nat ); 1%nat; 3%nat; 5%nat; 4%nat; 3%nat] [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]))): Prop) .
Lemma perm_6:( ((isPermutationBy beq_nat [( 2%nat :nat ); 1%nat; 3%nat; 5%nat; 4%nat; 3%nat] [ 1%nat; 2%nat; 3%nat; 3%nat; 4%nat; 5%nat])): Prop) .

Lemma isPermutation_1 :( (forall l,( (isPermutationBy (fun x y => x = y) l l) : Prop)): Prop) .
Lemma isPermutation_2 :( (forall l1  l2,(  Bool.eqb(isPermutationBy (fun x y => x = y) l1 l2) (isPermutationBy (fun x y => x = y) l2 l1) : Prop)): Prop) .
Lemma isPermutation_3 :( (forall l1  l2  l3,( ((negb (isPermutationBy (fun x y => x = y) l1 l2)) || ((negb (isPermutationBy (fun x y => x = y) l2 l3)) || (isPermutationBy (fun x y => x = y) l1 l3))) : Prop)): Prop) .
Lemma isPermutation_4 :( (forall l1  l2,( ((negb (isPermutationBy (fun x y => x = y) l1 l2)) || ( beq_nat(List.length l1) (List.length l2))) : Prop)): Prop) .
Lemma isPermutation_5 :( (forall l1  l2,( ((negb (isPermutationBy (fun x y => x = y) l1 l2)) || (forall x,( Bool.eqb (elem x l1) (elem x l2) : Prop))) : Prop)): Prop) .

Lemma isSorted_1:( ((isSortedBy nat_lteb ([] :list  nat ))): Prop) .
Lemma isSorted_2:( ((isSortedBy nat_lteb [( 2%nat :nat )])): Prop) .
Lemma isSorted_3:( ((isSortedBy nat_lteb [( 2%nat :nat ); 4%nat; 5%nat])): Prop) .
Lemma isSorted_4:( ((isSortedBy nat_lteb [( 1%nat :nat ); 2%nat; 2%nat; 4%nat; 4%nat; 8%nat])): Prop) .
Lemma isSorted_5:( (negb ((isSortedBy nat_lteb [( 3%nat :nat ); 2%nat]))): Prop) .
Lemma isSorted_6:( (negb ((isSortedBy nat_lteb [( 1%nat :nat ); 2%nat; 3%nat; 2%nat; 3%nat; 4%nat; 5%nat]))): Prop) .

Lemma insertBy_1:( (forall l  e  cmp,( ((negb ((forall x  y  z,( ((negb (cmp x y && cmp y z)) || cmp x z) : Prop)) && isSortedBy cmp l)) || isSortedBy cmp (insertBy cmp e l)) : Prop)): Prop) .
Lemma insertBy_2:( (forall l  e  cmp,( beq_nat (List.length (insertBy cmp e l)) (Coq.Init.Peano.plus (List.length l)( 1%nat)) : Prop)): Prop) .
Lemma insertBy_3:( (forall l  e1  e2  cmp,( Bool.eqb (elem e1 (insertBy cmp e2 l)) ((e1 = e2) || elem e1 l) : Prop)): Prop) .

Lemma insertSort_1:( (forall l  cmp,( (isPermutationBy (fun x y => x = y) ((insertSortBy isLessEqual l)) l) : Prop)): Prop) .
Lemma insertSort_2:( (forall l  cmp,( (isSortedBy isLessEqual ((insertSortBy isLessEqual l))) : Prop)): Prop) .


Lemma sort_1 :( ( (list_equal_by beq_nat(insertSortBy nat_lteb ([] :  list  nat )) [])): Prop) .
Lemma sort_2 :( ( (list_equal_by beq_nat(insertSortBy nat_lteb ([ 6%nat; 4%nat; 3%nat; 8%nat; 1%nat; 2%nat] :  list  nat )) [ 1%nat; 2%nat; 3%nat; 4%nat; 6%nat; 8%nat])): Prop) .
Lemma sort_3 :( ( (list_equal_by beq_nat(insertSortBy nat_lteb ([ 5%nat; 4%nat; 5%nat; 2%nat; 4%nat] :  list  nat )) [ 2%nat; 4%nat; 4%nat; 5%nat; 5%nat])): Prop) .

Lemma sort_4:( (forall l  cmp,( (isPermutationBy (fun x y => x = y) ((insertSortBy isLessEqual l)) l) : Prop)): Prop) .
Lemma sort_5:( (forall l  cmp,( (isSortedBy isLessEqual ((insertSortBy isLessEqual l))) : Prop)): Prop) .


