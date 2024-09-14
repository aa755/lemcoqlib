(* Generated by Lem from show_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Require Import coqharness.

Open Scope nat_scope.
Open Scope string_scope.



Require Import lem_string.
Require Export lem_string.
Require Import lem_maybe.
Require Export lem_maybe.
Require Import lem_num.
Require Export lem_num.
Require Import lem_basic_classes.
Require Export lem_basic_classes.
Require Import lem_set.
Require Export lem_set.
Require Import lem_relation.
Require Export lem_relation.
Require Import lem_show.
Require Export lem_show.
 
Require Import lem_set_extra.
Require Export lem_set_extra.
Require Import lem_string_extra.
Require Export lem_string_extra.


Instance x224_Show : Show nat := {
   show  :=  lem_string_extra.stringFromNat
}.


Instance x223_Show : Show nat := {
   show  :=  lem_string_extra.stringFromNatural
}.


Instance x222_Show : Show Z := {
   show  :=  lem_string_extra.stringFromInt
}.


Instance x221_Show : Show Z := {
   show  :=  lem_string_extra.stringFromInteger
}.


Definition stringFromSet {a : Type} `{SetType a}  (showX : a -> string ) (xs : set a)  : string :=  
  String.append"{"  (String.append(lem_show.stringFromListAux showX (set_to_list xs)) "}").

(* Abbreviates the representation if the relation is transitive. *)
Definition stringFromRelation {a : Type} `{Eq a} `{SetType a}  (showX : (a*a) % type -> string ) (rel1 : set ((a*a) % type))  : string := 
  if isTransitive rel1 then
    let pruned_rel  := withoutTransitiveEdges rel1 in
    if (set_for_all  (fun (e : (a*a) % type) =>
    ( (set_member_by (pairCompare setElemCompare setElemCompare) e pruned_rel))) rel1) then
      (* The relations are the same (there are no transitive edges),
         so we can just as well print the original one. *)
      stringFromSet showX rel1
    else 
      String.append"trancl of " (stringFromSet showX pruned_rel)
  else
    stringFromSet showX rel1.

Instance x220_Show{a: Type} `{Show a} `{SetType a}: Show (set  a):= {
   show   xs :=  stringFromSet show xs
}.

