(* Generated by Lem from set.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.



Lemma empty_0:( (set_equal_by boolCompare (set_empty :  set  bool ) []): Prop) .
Lemma empty_1:( (set_equal_by (genericCompare nat_ltb beq_nat) (set_empty :  set  nat ) []): Prop) .
Lemma empty_2:( (set_equal_by (lexicographicCompareBy (genericCompare nat_ltb beq_nat)) (set_empty :  set  (list  nat )) []): Prop) .
Lemma empty_3:( (set_equal_by (set_compare_by (genericCompare nat_ltb beq_nat)) (set_empty :  set  (set  nat )) []): Prop) .

Lemma any_0 :( set_any (fun  (x:nat ) => nat_gtb x( 5%nat)) [ 3%nat;  4%nat;  6%nat]: Prop) .
Lemma any_1 :( negb (set_any (fun  (x:nat ) => nat_gtb x( 10%nat)) [ 3%nat;  4%nat;  6%nat]): Prop) .

Lemma all_0 :( set_for_all (fun  (x:nat ) => nat_gtb x( 2%nat)) [ 3%nat;  4%nat;  6%nat]: Prop) .
Lemma all_1 :( negb (set_for_all (fun  (x:nat ) => nat_gtb x( 2%nat)) [ 3%nat;  4%nat;  6%nat;  1%nat]): Prop) .

Lemma in_1:( ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [( 2%nat :nat );  3%nat;  1%nat])): Prop) .
Lemma in_2:( (negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [ 2%nat;  3%nat;  4%nat]))): Prop) .
Lemma in_3:( (negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) []))): Prop) .
Lemma in_4:( ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [ 1%nat;  2%nat;  1%nat;  3%nat;  1%nat;  4%nat])): Prop) .

Lemma nin_1:( negb ( negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [ 2%nat;  3%nat;  1%nat]))): Prop) .
Lemma nin_2:( ( negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [ 2%nat;  3%nat;  4%nat]))): Prop) .
Lemma nin_3:( ( negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) []))): Prop) .
Lemma nin_4:( negb ( negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 1%nat :nat ) [ 1%nat;  2%nat;  1%nat;  3%nat;  1%nat;  4%nat]))): Prop) .

Lemma null_1:( (set_is_empty ([] : set  nat )): Prop) .
Lemma null_2:( (negb (set_is_empty [( 1%nat :nat )])): Prop) .

Lemma singleton_1 :( (set_equal_by (genericCompare nat_ltb beq_nat) (set_singleton ( 2%nat :nat )) [ 2%nat]): Prop) .
Lemma singleton_2 :( negb (set_is_empty (set_singleton ( 2%nat :nat ))): Prop) .
Lemma singleton_3 :( (set_member_by (genericCompare nat_ltb beq_nat)( 2%nat) (set_singleton ( 2%nat :nat ))): Prop) .
Lemma singleton_4 :( negb ( (set_member_by (genericCompare nat_ltb beq_nat)( 3%nat) (set_singleton ( 2%nat :nat )))): Prop) .

Lemma size_1:( ( beq_nat(set_cardinal ([] :set  nat ))( 0%nat)): Prop) .
Lemma size_2:( ( beq_nat(set_cardinal [( 2%nat :nat )])( 1%nat)): Prop) .
Lemma size_3:( ( beq_nat(set_cardinal [( 1%nat :nat );  1%nat])( 1%nat)): Prop) .
Lemma size_4:( ( beq_nat(set_cardinal [( 2%nat :nat );  1%nat;  3%nat])( 3%nat)): Prop) .
Lemma size_5:( ( beq_nat(set_cardinal [( 2%nat :nat );  1%nat;  3%nat;  9%nat])( 4%nat)): Prop) .

Lemma null_size:( (forall s,( ((negb (set_is_empty s)) || ( beq_nat(set_cardinal s)( 0%nat))) : Prop)): Prop) .
Lemma null_singleton:( (forall x,( ( beq_nat(set_cardinal (set_singleton x))( 1%nat)) : Prop)): Prop) .

Lemma set_patterns_0:( (
  match ( ([] :  set  nat )) with 
    | set_empty => true
    | _ => false
  end
): Prop) .

Lemma set_patterns_1:( negb (
  match ( [( 2%nat :nat )]) with 
    | set_empty => true
    | _ => false
  end
): Prop) .

Lemma set_patterns_2:( negb (
  match ( [( 3%nat :  nat );  4%nat]) with 
    | set_empty => true
    | _ => false
  end
): Prop) .

Lemma set_patterns_3:( beq_nat (
  match ( ([ 2%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton x => x
    | _ => 1%nat
  end
)( 2%nat): Prop) .

Lemma set_patterns_4:( beq_nat (
  match ( ([] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton x => x
    | _ => 1%nat
  end
)( 0%nat): Prop) .

Lemma set_patterns_5:( beq_nat (
  match ( ([ 3%nat;  4%nat;  5%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton x => x
    | _ => 1%nat
  end
)( 1%nat): Prop) .

Lemma set_patterns_6:( beq_nat (
  match ( ([ 3%nat;  3%nat;  3%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton x => x
    | _ => 1%nat
  end
)( 3%nat): Prop) .

Lemma set_patterns_7:( beq_nat (
  match ( ([ 3%nat;  4%nat;  5%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton _ => 1%nat
    | s => set_cardinal s
  end
)( 3%nat): Prop) .

Lemma set_patterns_8:( beq_nat (
  match ( (([ 3%nat;  4%nat;  5%nat] :  set  nat ), false)) with 
    | (set_empty,  true) => 0%nat
    | (set_singleton _,  _) => 1%nat
    | (s,  true) => set_cardinal s
    | _ => 5%nat
  end
)( 5%nat): Prop) .

Lemma set_patterns_9:( beq_nat (
  match ( ([ 5%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton 2%nat => 0%nat
    | set_singleton(  S (S (S (x)))) => x
    | _ => 1%nat
  end
)( 2%nat): Prop) .

Lemma set_patterns_10:( beq_nat (
  match ( ([ 2%nat] :  set  nat )) with 
    | set_empty => 0%nat
    | set_singleton 2%nat => 0%nat
    | set_singleton(  S (S (S (x)))) => x
    | _ => 1%nat
  end
)( 0%nat): Prop) .


Lemma union_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat) (set_union_by (genericCompare nat_ltb beq_nat)[( 1%nat :nat );  2%nat;  3%nat] [ 3%nat;  2%nat;  4%nat]) [ 1%nat;  2%nat;  3%nat;  4%nat])): Prop) .
Lemma union_in:( (forall e  s1  s2,(  Bool.eqb(set_member_by setElemCompare e ( (set_union_by setElemCompare s1 s2))) ( (set_member_by setElemCompare e s1) || (set_member_by setElemCompare e s2)) : Prop)): Prop) .

Lemma insert_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_add ( 2%nat :nat ) [ 3%nat;  4%nat]) [ 2%nat;  3%nat;  4%nat])): Prop) .
Lemma insert_2:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_add ( 3%nat :nat ) [ 3%nat;  4%nat]) [ 3%nat;  4%nat])): Prop) .
Lemma insert_3:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_add ( 3%nat :nat ) []) [ 3%nat])): Prop) .

Lemma filter_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(filter (fun (n : nat ) => ( nat_gtb n( 2%nat))) [( 1%nat :nat );  2%nat;  3%nat;  4%nat]) [ 3%nat;  4%nat])): Prop) .
Lemma filter_2:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(filter (fun (n : nat ) => nat_gtb n ( 2%nat :nat )) []) [])): Prop) .
Lemma filter_emp:( (forall P,( (set_equal_by setElemCompare (filter P []) []) : Prop)): Prop) .
Lemma filter_insert:( (forall e  s  P,( (set_equal_by setElemCompare (filter P (set_add e s))
  (if (P e) then set_add e (filter P s) else (filter P s))) : Prop)): Prop) .

Lemma split_simple:(
        ((tuple_equal_by (set_equal_by (pairCompare (genericCompare nat_ltb beq_nat) (genericCompare nat_ltb beq_nat))) (set_equal_by (pairCompare (genericCompare nat_ltb beq_nat) (genericCompare nat_ltb beq_nat))) (split 
        ( 3%nat, 0%nat) 
        ([ ( 1%nat, 0%nat);  ( 2%nat, 0%nat);  ( 3%nat, 0%nat);  ( 4%nat, 0%nat);  ( 5%nat, 0%nat);  ( 6%nat, 0%nat) ] :  set  ((nat  * nat ) % type))) ([ ( 1%nat, 0%nat);  ( 2%nat, 0%nat) ], [ ( 4%nat, 0%nat);  ( 5%nat, 0%nat);  ( 6%nat, 0%nat) ]))): Prop) .

Lemma isSubsetOf_1:( ((set_subset_by (genericCompare nat_ltb beq_nat) ([] :set  nat ) [])): Prop) .
Lemma isSubsetOf_2:( ((set_subset_by (genericCompare nat_ltb beq_nat) [( 1%nat :nat );  2%nat;  3%nat] [ 1%nat;  2%nat;  3%nat])): Prop) .
Lemma isSubsetOf_3:( ((set_subset_by (genericCompare nat_ltb beq_nat) [( 1%nat :nat );  2%nat] [ 3%nat;  2%nat;  1%nat])): Prop) .
Lemma isSubsetOf_refl:( (forall s,( (set_subset_by setElemCompare s s) : Prop)): Prop) .
Lemma isSubsetOf_def:( (forall s1  s2,( Bool.eqb (set_subset_by setElemCompare s1 s2) (forall e,( ((negb (set_member_by setElemCompare e s1)) || (set_member_by setElemCompare e s2)) : Prop)) : Prop)): Prop) .
Lemma isSubsetOf_eq:( (forall s1  s2,(  Bool.eqb( (set_equal_by setElemCompare s1 s2)) (((set_subset_by setElemCompare s1 s2)) && ((set_subset_by setElemCompare s2 s1))) : Prop)): Prop) .

Lemma isProperSubsetOf_1:( (negb ((set_proper_subset_by (genericCompare nat_ltb beq_nat) ([] :set  nat ) []))): Prop) .
Lemma isProperSubsetOf_2:( (negb ((set_proper_subset_by (genericCompare nat_ltb beq_nat) [( 1%nat :nat );  2%nat;  3%nat] [ 1%nat;  2%nat;  3%nat]))): Prop) .
Lemma isProperSubsetOf_3:( ((set_proper_subset_by (genericCompare nat_ltb beq_nat) [( 1%nat :nat );  2%nat] [ 3%nat;  2%nat;  1%nat])): Prop) .
Lemma isProperSubsetOf_irrefl:( (forall s,( negb ((set_proper_subset_by setElemCompare s s)) : Prop)): Prop) .
Lemma isProperSubsetOf_def:( (forall s1  s2,(  Bool.eqb(set_proper_subset_by setElemCompare s1 s2) (((set_subset_by setElemCompare s1 s2)) && negb ((set_subset_by setElemCompare s2 s1))) : Prop)): Prop) .

Lemma bigunion_0:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion [[( 1%nat :nat )]]) [ 1%nat])): Prop) .
Lemma bigunion_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion [[( 1%nat :nat );  2%nat;  3%nat] ;  [ 3%nat;  2%nat;  4%nat]]) [ 1%nat;  2%nat;  3%nat;  4%nat])): Prop) .
Lemma bigunion_2:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion [[( 1%nat :nat );  2%nat;  3%nat] ;  [ 3%nat;  2%nat;  4%nat];  []]) [ 1%nat;  2%nat;  3%nat;  4%nat])): Prop) .
Lemma bigunion_3:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion [[( 1%nat :nat );  2%nat;  3%nat] ;  [ 3%nat;  2%nat;  4%nat];  [ 5%nat]]) [ 1%nat;  2%nat;  3%nat;  4%nat;  5%nat])): Prop) .
Lemma bigunion_in:( (forall e  bs,(  Bool.eqb(set_member_by setElemCompare e (bigunion bs)) (exists s,( (set_member_by (set_compare_by setElemCompare) s bs) && (set_member_by setElemCompare e s) : Prop)) : Prop)): Prop) .

Lemma difference_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_diff_by (genericCompare nat_ltb beq_nat) [( 1%nat :nat );  2%nat;  3%nat] [ 3%nat;  2%nat;  4%nat]) [ 1%nat])): Prop) .
Lemma difference_in:( (forall e  s1  s2,(  Bool.eqb(set_member_by setElemCompare e ((set_diff_by setElemCompare s1 s2))) ( (set_member_by setElemCompare e s1) && negb ( (set_member_by setElemCompare e s2))) : Prop)): Prop) .

Lemma intersection_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_inter_by (genericCompare nat_ltb beq_nat) [ 1%nat;  2%nat;  3%nat] [( 3%nat :nat );  2%nat;  4%nat]) [ 2%nat;  3%nat])): Prop) .
Lemma intersection_in:( (forall e  s1  s2,(  Bool.eqb(set_member_by setElemCompare e ((set_inter_by setElemCompare s1 s2))) ( (set_member_by setElemCompare e s1) && (set_member_by setElemCompare e s2)) : Prop)): Prop) .

Lemma map_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(map S [( 2%nat :nat );  3%nat;  4%nat]) [ 5%nat;  4%nat;  3%nat])): Prop) . 
Lemma map_2:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(map (fun (n : nat ) => Coq.Init.Peano.mult n( 3%nat)) [( 2%nat :nat );  3%nat;  4%nat]) [ 6%nat;  9%nat;  12%nat])): Prop) .

Lemma bigunionmap_0:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion (map (fun (n : nat ) => [n;  Coq.Init.Peano.mult( 2%nat) n;  Coq.Init.Peano.mult( 3%nat) n]) [( 1%nat :nat )])) [ 1%nat;  2%nat;  3%nat])): Prop) .
Lemma bigunionmap_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(bigunion (map (fun (n : nat ) => [n;  Coq.Init.Peano.mult( 2%nat) n;  Coq.Init.Peano.mult( 3%nat) n]) [( 2%nat :nat );  8%nat])) [ 2%nat;  4%nat;  6%nat;  8%nat;  16%nat;  24%nat])): Prop) .


Lemma fromList_1:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_from_list_by (genericCompare nat_ltb beq_nat) [( 2%nat :nat ); 4%nat; 3%nat]) [ 2%nat;  3%nat;  4%nat])): Prop) . 
Lemma fromList_2:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_from_list_by (genericCompare nat_ltb beq_nat) [( 2%nat :nat ); 2%nat; 3%nat; 2%nat; 4%nat]) [ 2%nat;  3%nat;  4%nat])): Prop) . 
Lemma fromList_3:( ( (set_equal_by (genericCompare nat_ltb beq_nat)(set_from_list_by (genericCompare nat_ltb beq_nat) ([] :  list  nat )) [])): Prop) .

Lemmasigma_def_lemma:((forallsa sb a,((set_equal_by (pairCompare setElemCompare setElemCompare) (let x2  := 
  [] in set_fold
   (fun (a1 : a) (x2 : set ((a*b) % type)) =>
      set_fold
        (fun (b1 : b) (x2 : set ((a*b) % type)) =>
           if true then set_add (a1, b1) x2 else x2) (sb a1) x2) sa x2) (set_sigma_by (pairCompare setElemCompare setElemCompare) sa sb)) : Prop)): Prop) .

Lemma Sigma_1:( ( (set_equal_by (pairCompare (genericCompare nat_ltb beq_nat) (genericCompare nat_ltb beq_nat))(set_sigma_by (pairCompare (genericCompare nat_ltb beq_nat) (genericCompare nat_ltb beq_nat)) [( 2%nat :nat );  3%nat] (fun (n : nat ) => [Coq.Init.Peano.mult n( 2%nat);  Coq.Init.Peano.mult n( 3%nat)])) [( 2%nat, 4%nat);  ( 2%nat, 6%nat);  ( 3%nat, 6%nat);  ( 3%nat, 9%nat)])): Prop) .
Lemma Sigma_2:( (forall sa  sb  a  b,(  Bool.eqb( (set_member_by (pairCompare setElemCompare setElemCompare)(a, b) (set_sigma_by (pairCompare setElemCompare setElemCompare) sa sb))) (( (set_member_by setElemCompare a sa)) && ( (set_member_by setElemCompare b (sb a)))) : Prop)): Prop) .

Lemma cross_by_sigma :(forall s1  s2,( (set_equal_by (pairCompare setElemCompare setElemCompare) (cross s1 s2) (set_sigma_by (pairCompare setElemCompare setElemCompare) s1 (const s2))) : Prop): Prop) .
Lemma cross_1 :( ( (set_equal_by (pairCompare (genericCompare nat_ltb beq_nat) boolCompare)(cross [( 2%nat :nat );  3%nat] [true;  false]) [( 2%nat,true); ( 3%nat,true);  ( 2%nat,false);  ( 3%nat,false)])): Prop) .

Lemma lfp_empty_0:( (set_equal_by (genericCompare nat_ltb beq_nat) (leastFixedPoint( 0%nat) (map (fun (x : nat ) => x)) ([] :  set  nat )) []): Prop) .
Lemma lfp_empty_1:( (set_equal_by (genericCompare nat_ltb beq_nat) (leastFixedPoint( 1%nat) (map (fun (x : nat ) => x)) ([] :  set  nat )) []): Prop) .
Lemma lfp_saturate_neg_1:( (set_equal_by (genericCompare int_ltb Z.eqb) (leastFixedPoint( 1%nat) (map (fun (x : Z ) => (Coq.ZArith.BinInt.Z.sub Z0 x))) ([(Z.pred (Z.pos (P_of_succ_nat 1%nat))); (Z.pred (Z.pos (P_of_succ_nat 2%nat))); (Z.pred (Z.pos (P_of_succ_nat 3%nat)))] :  set  Z )) [(Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 3%nat)))));  (Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 2%nat)))));  (Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 1%nat))))); (Z.pred (Z.pos (P_of_succ_nat 1%nat))); (Z.pred (Z.pos (P_of_succ_nat 2%nat))); (Z.pred (Z.pos (P_of_succ_nat 3%nat)))]): Prop) .
Lemma lfp_saturate_neg_2:( (set_equal_by (genericCompare int_ltb Z.eqb) (leastFixedPoint( 2%nat) (map (fun (x : Z ) => (Coq.ZArith.BinInt.Z.sub Z0 x))) ([(Z.pred (Z.pos (P_of_succ_nat 1%nat))); (Z.pred (Z.pos (P_of_succ_nat 2%nat))); (Z.pred (Z.pos (P_of_succ_nat 3%nat)))] :  set  Z )) [(Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 3%nat)))));  (Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 2%nat)))));  (Coq.ZArith.BinInt.Z.sub Z0 ((Z.pred (Z.pos (P_of_succ_nat 1%nat))))); (Z.pred (Z.pos (P_of_succ_nat 1%nat))); (Z.pred (Z.pos (P_of_succ_nat 2%nat))); (Z.pred (Z.pos (P_of_succ_nat 3%nat)))]): Prop) .
Lemma lfp_saturate_mod_3:( (set_equal_by (genericCompare nat_ltb beq_nat) (leastFixedPoint( 3%nat) (map (fun (x : nat ) => Coq.Numbers.Natural.Peano.NPeano.modulo (Coq.Init.Peano.mult( 2%nat)x)( 5%nat))) ([ 1%nat] :  set  nat )) [ 1%nat;  2%nat;  3%nat;  4%nat]): Prop) .
Lemma lfp_saturate_mod_4:( (set_equal_by (genericCompare nat_ltb beq_nat) (leastFixedPoint( 4%nat) (map (fun (x : nat ) => Coq.Numbers.Natural.Peano.NPeano.modulo (Coq.Init.Peano.mult( 2%nat)x)( 5%nat))) ([ 1%nat] :  set  nat )) [ 1%nat;  2%nat;  3%nat;  4%nat]): Prop) .
Lemma lfp_saturate_mod_5:( (set_equal_by (genericCompare nat_ltb beq_nat) (leastFixedPoint( 5%nat) (map (fun (x : nat ) => Coq.Numbers.Natural.Peano.NPeano.modulo (Coq.Init.Peano.mult( 2%nat)x)( 5%nat))) ([ 1%nat] :  set  nat )) [ 1%nat;  2%nat;  3%nat;  4%nat]): Prop) .
Lemma lfp_termination:( (set_subset_by (genericCompare nat_ltb beq_nat) [ 1%nat;  3%nat;  5%nat;  7%nat;  9%nat] (leastFixedPoint( 5%nat) (map (fun (x : nat ) =>Coq.Init.Peano.plus( 2%nat)x)) [( 1%nat :  nat )])): Prop) . 
