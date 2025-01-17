(* Generated by Lem from list_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.



Lemma head_simple_1:( ( beq_nat(head [ 3%nat; 1%nat]) ( 3%nat :nat )): Prop) .
Lemma head_simple_2:( ( beq_nat(head [ 5%nat; 4%nat]) ( 5%nat :nat )): Prop) .

Lemma tail_simple_1:( ( (list_equal_by beq_nat(tail [( 3%nat :nat ); 1%nat]) [ 1%nat])): Prop) .
Lemma tail_simple_2:( ( (list_equal_by beq_nat(tail [( 5%nat :nat )]) [])): Prop) .
Lemma tail_simple_3:( ( (list_equal_by beq_nat(tail [( 5%nat :nat ); 4%nat; 3%nat; 2%nat]) [ 4%nat; 3%nat; 2%nat])): Prop) .

Lemma head_tail_cons:( (forall l,( ((negb (nat_gtb (List.length l)( 0%nat))) || ( (list_equal_by (fun x y => x = y)l ((head l)::(tail l))))) : Prop)): Prop) .


Lemma last_simple_1:( ( beq_nat(last [( 3%nat :nat ); 1%nat])( 1%nat)): Prop) .
Lemma last_simple_2:( ( beq_nat(last [( 5%nat :nat ); 4%nat])( 4%nat)): Prop) .

Lemma init_simple_1:( ( (list_equal_by beq_nat(init [( 3%nat :nat ); 1%nat]) [ 3%nat])): Prop) .
Lemma init_simple_2:( ( (list_equal_by beq_nat(init [( 5%nat :nat )]) [])): Prop) .
Lemma init_simple_3:( ( (list_equal_by beq_nat(init [( 5%nat :nat ); 4%nat; 3%nat; 2%nat]) [ 5%nat; 4%nat; 3%nat])): Prop) .

Lemma init_last_append:( (forall l,( ((negb (nat_gtb (List.length l)( 0%nat))) || ( (list_equal_by (fun x y => x = y)l  ((@ List.app _)(init l) [last l])))) : Prop)): Prop) .
Lemma init_last_dest:( (forall l,( ((negb (nat_gtb (List.length l)( 0%nat))) || ( (maybeEqualBy ((fun (left : (list a*a) % type) (right : (list a*a) % type)=>(tuple_equal_by (list_equal_by (fun x y => x = y)) (fun x y => x = y) left right)))(dest_init l) (Some (init l, last l))))) : Prop)): Prop) .
Lemmanth_def_lemma:((foralln l,( 
  match ( index l n) with Some e => e | None => DAEMON end = List.nth n l : Prop)): Prop) .

Lemma nth_0:( ( beq_nat(List.nth ( 0%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 0%nat :nat )): Prop) .
Lemma nth_1:( ( beq_nat(List.nth ( 1%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 1%nat :nat )): Prop) .
Lemma nth_2:( ( beq_nat(List.nth ( 2%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 2%nat :nat )): Prop) .
Lemma nth_3:( ( beq_nat(List.nth ( 3%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 3%nat :nat )): Prop) .
Lemma nth_4:( ( beq_nat(List.nth ( 4%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 4%nat :nat )): Prop) .
Lemma nth_5:( ( beq_nat(List.nth ( 5%nat) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) ( 5%nat :nat )): Prop) .

Lemma nth_index:( (forall l  n  e,( ((negb (nat_ltb n (List.length l))) || (maybeEqualBy (fun x y => x = y) (index l n) (Some (List.nth n l)))) : Prop)): Prop) . 

Lemma zipSameLength_1 :( ( (list_equal_by ((fun (left : (nat *nat ) % type) (right : (nat *nat ) % type)=>(tuple_equal_by beq_nat beq_nat left right)))(zipSameLength [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat] [( 2%nat :nat ); 3%nat; 4%nat; 5%nat; 6%nat]) [( 1%nat, 2%nat);( 2%nat, 3%nat);( 3%nat, 4%nat);( 4%nat, 5%nat);( 5%nat, 6%nat)])): Prop) .

