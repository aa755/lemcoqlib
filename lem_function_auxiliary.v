(* Generated by Lem from function.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.


Lemmaid_def_lemma:((forallx,( 
  x = x : Prop)): Prop) .
Lemmacomb_def_lemma:((forallf g,(classical_boolean_equivalence (fun (x : a) => f (g x)) 
  (compose f g) : Prop)): Prop) .
Lemmaapply_def_lemma:((forallf,(classical_boolean_equivalence (fun (x : a) => f x) 
  (apply f) : Prop)): Prop) .
Lemmaflip_def_lemma:((forallf,(classical_boolean_equivalence (fun (x : b) (y : a) => f y x) 
  (flip f) : Prop)): Prop) .