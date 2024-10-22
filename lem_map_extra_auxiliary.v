(* Generated by Lem from map_extra.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.


Lemma find_insert_1:( ( Bool.eqb(find0( 16%nat) (fmap_add ( 16%nat :  nat ) true fmap_empty)) true): Prop) .
Lemma find_insert_2:( ( Bool.eqb(find0( 36%nat) (fmap_add( 36%nat) false (fmap_add ( 16%nat :  nat ) true fmap_empty))) false ): Prop) .

