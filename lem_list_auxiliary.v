(* Generated by Lem from list.lem. *)

Require Import Arith.
Require Import Bool.
Require Import List.
Require Import String.
Require Import Program.Wf.

Open Scope nat_scope.
Open Scope string_scope.



Lemma null_simple_1:( (null ([] :list  nat )): Prop) .
Lemma null_simple_2:( (negb (null [( 2%nat :nat ); 3%nat; 4%nat])): Prop) .
Lemma null_simple_3:( (negb (null [( 2%nat :nat )])): Prop) .
Lemmalength_def_lemma:((foralll,(beq_nat
  match ( l) with 
    | [] => 0%nat
    | x :: xs => Coq.Init.Peano.plus (List.length xs)( 1%nat)
  end (List.length l) : Prop)): Prop) .

Lemma length_0:( ( beq_nat(List.length ([] :list  nat ))( 0%nat)): Prop) .
Lemma length_1:( ( beq_nat(List.length ([ 2%nat] :list  nat ))( 1%nat)): Prop) .
Lemma length_2:( ( beq_nat(List.length ([ 2%nat; 3%nat] :list  nat ))( 2%nat)): Prop) .

Lemma length_spec:( (( beq_nat(List.length [])( 0%nat)) && (forall x  xs,( beq_nat (List.length (x :: xs)) (Coq.Init.Peano.plus (List.length xs)( 1%nat)) : Prop))): Prop) .

LemmalistEqualBy_def_lemma:((foralll1 l2 eq,(Bool.eqb match ( (l1,l2)) with 
  | ([],  []) => true
  | ([], ( _::_)) => false
  | ((_::_),  []) => false
  | (x::xs,  y :: ys) => (eq x y && list_equal_by eq xs ys)
end (list_equal_by eq l1 l2) : Prop)): Prop) .


Lemma list_ord_1 :( ( (lexicographicLessBy nat_ltb nat_lteb[] [( 2%nat :nat )])): Prop) .
Lemma list_ord_2 :( ( (lexicographicLessEqBy nat_ltb nat_lteb[] [( 2%nat :nat )])): Prop) .
Lemma list_ord_3 :( ( (lexicographicLessEqBy nat_ltb nat_lteb[ 1%nat] [( 2%nat :nat )])): Prop) .
Lemma list_ord_4 :( ( (lexicographicLessEqBy nat_ltb nat_lteb[ 2%nat] [( 2%nat :nat )])): Prop) .
Lemma list_ord_5 :( ( (lexicographicLessBy nat_ltb nat_lteb [( 2%nat :nat )] [ 2%nat; 3%nat])): Prop) .
Lemma list_ord_6 :( ( (lexicographicLessBy nat_ltb nat_lteb [( 2%nat :nat )] [ 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma list_ord_7 :( ( (lexicographicLessBy nat_ltb nat_lteb [( 2%nat :nat ); 1%nat; 5%nat; 67%nat] [ 2%nat; 3%nat; 4%nat])): Prop) .
Lemma list_ord_8 :( ( (lexicographicLessBy nat_ltb nat_lteb [( 3%nat :nat ); 56%nat] [ 4%nat])): Prop) .
Lemma list_ord_9 :( ( (lexicographicLessEqBy nat_ltb nat_lteb [( 5%nat :nat )] [ 5%nat])): Prop) . (* originally append *)
Lemmaappend_def_lemma:((forallys xs,((list_equal_by (fun x y => x = y) match ( xs) with 
                     | [] => ys
                     | x :: xs' => x :: ( (@ List.app _)xs' ys)
                   end 
  ((@ List.app _) xs ys)) : Prop)): Prop) .

Lemma append_1:( ( (list_equal_by beq_nat ((@ List.app _)[ 0%nat; 1%nat; 2%nat; 3%nat] [ 4%nat; 5%nat]) [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma append_nil_1:( (forall l,( (list_equal_by (fun x y => x = y)  ((@ List.app _)l []) l) : Prop)): Prop) .
Lemma append_nil_2:( (forall l,( (list_equal_by (fun x y => x = y)  ((@ List.app _)[] l) l) : Prop)): Prop) .
Lemmasnoc_def_lemma:((foralle l,((list_equal_by (fun x y => x = y)  ((@ List.app _)l [e])  ((@ List.app _)l [e])) : Prop)): Prop) .

Lemma snoc_1 :( (list_equal_by beq_nat  ((@ List.app _)[] [( 2%nat :nat )]) [ 2%nat]): Prop) .
Lemma snoc_2 :( (list_equal_by beq_nat  ((@ List.app _)[ 3%nat; 4%nat] [( 2%nat :nat )]) [ 3%nat; 4%nat; 2%nat]): Prop) .
Lemma snoc_3 :( (list_equal_by beq_nat  ((@ List.app _)[ 1%nat] [( 2%nat :nat )]) [ 1%nat; 2%nat]): Prop) .
Lemma snoc_length :(forall e  l,( beq_nat (List.length ( (@ List.app _)l [e])) (S (List.length l)) : Prop): Prop) .
Lemma snoc_append :(forall e  l1  l2,( ( (list_equal_by (fun x y => x = y) ((@ List.app _)( (@ List.app _)l1 l2) [e])  ((@ List.app _)l1 ( (@ List.app _)l2 [e])))) : Prop): Prop) .

Lemma reverseAppend_1:( ( (list_equal_by beq_nat(reverseAppend [( 0%nat :nat ); 1%nat; 2%nat; 3%nat] [ 4%nat; 5%nat]) [ 3%nat; 2%nat; 1%nat; 0%nat; 4%nat; 5%nat])): Prop) . (* originally named rev *)
Lemmareverse_def_lemma:((foralll,((list_equal_by (fun x y => x = y) (reverseAppend l []) 
  (List.rev l)) : Prop)): Prop) .

Lemma reverse_nil:( ( (list_equal_by beq_nat(List.rev ([] :list  nat )) [])): Prop) .
Lemma reverse_1:( ( (list_equal_by beq_nat(List.rev [( 1%nat :nat )]) [ 1%nat])): Prop) .
Lemma reverse_2:( ( (list_equal_by beq_nat(List.rev [( 1%nat :nat ); 2%nat]) [ 2%nat; 1%nat])): Prop) .
Lemma reverse_5:( ( (list_equal_by beq_nat(List.rev [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat]) [ 5%nat; 4%nat; 3%nat; 2%nat; 1%nat])): Prop) .

Lemma reverseAppend:( (forall l1  l2,( (list_equal_by (fun x y => x = y) (reverseAppend l1 l2) ((@ List.app _) (List.rev l1) l2)) : Prop)): Prop) .
Lemmamap_def_lemma:((forallf l,((list_equal_by (fun x y => x = y) (count_map f l( 0%nat)) 
  (List.map f l)) : Prop)): Prop) .

Lemma map_nil:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) []) [])): Prop) .
Lemma map_1:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat]) [ 1%nat])): Prop) .
Lemma map_2:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat; 1%nat]) [ 1%nat; 2%nat])): Prop) .
Lemma map_3:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat; 1%nat; 2%nat]) [ 1%nat; 2%nat; 3%nat])): Prop) .
Lemma map_4:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat; 1%nat; 2%nat; 3%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat])): Prop) .
Lemma map_5:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma map_6:( ( (list_equal_by beq_nat(List.map (fun (x : nat ) => Coq.Init.Peano.plus x ( 1%nat :nat )) [ 0%nat; 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])): Prop) . (* originally foldl *)

Lemmafoldl_def_lemma:((forallf l b,( 
  match ( l) with | [] => b | x :: xs => List.fold_left f xs (f b x) end =
  List.fold_left f l b : Prop)): Prop) .

Lemma foldl_0:( ( beq_nat(List.fold_left Coq.Init.Peano.plus [] ( 0%nat :nat ))( 0%nat)): Prop) .
Lemma foldl_1:( ( beq_nat(List.fold_left Coq.Init.Peano.plus [ 4%nat] ( 0%nat :nat ))( 4%nat)): Prop) .
Lemma foldl_4:( ( (list_equal_by beq_nat(List.fold_left (fun (l : list (nat )) (e : nat ) => e::l) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat] []) [ 4%nat; 3%nat; 2%nat; 1%nat])): Prop) . (* originally foldr with different argument order *)
Lemmafoldr_def_lemma:((forallf l b,( 
  match ( l) with | [] => b | x :: xs => f x (List.fold_right f b xs) end =
  List.fold_right f b l : Prop)): Prop) . 

Lemma foldr_0:( ( beq_nat(List.fold_right Coq.Init.Peano.plus ( 0%nat :nat ) [])( 0%nat)): Prop) .
Lemma foldr_1:( ( beq_nat(List.fold_right Coq.Init.Peano.plus( 1%nat) [( 4%nat :nat )])( 5%nat)): Prop) .
Lemma foldr_4:( ( (list_equal_by beq_nat(List.fold_right (fun (e : nat ) (l : list (nat )) => e::l) [] [( 1%nat :nat ); 2%nat; 3%nat; 4%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat])): Prop) .

Lemma concat_nil:( ( (list_equal_by beq_nat(concat ([] :list  (list  nat ))) [])): Prop) .
Lemma concat_1:( ( (list_equal_by beq_nat(concat [[( 1%nat :nat )]]) [ 1%nat])): Prop) .
Lemma concat_2:( ( (list_equal_by beq_nat(concat [[( 1%nat :nat )];[ 2%nat]]) [ 1%nat; 2%nat])): Prop) .
Lemma concat_3:( ( (list_equal_by beq_nat(concat [[( 1%nat :nat )];[];[ 2%nat]]) [ 1%nat; 2%nat])): Prop) .

Lemma concat_emp_thm:( ( (list_equal_by (fun x y => x = y)(concat []) [])): Prop) .
Lemma concat_cons_thm:( (forall l  ll,( ( (list_equal_by (fun x y => x = y)(concat (l::ll)) ((@ List.app _) l (concat ll)))) : Prop)): Prop) .

Lemma concatMap_nil:( ( (list_equal_by beq_nat(concat (List.map (fun  (x:nat ) => [x;x]) [])) [])): Prop) .
Lemma concatMap_1:( ( (list_equal_by beq_nat(concat (List.map (fun (x : nat ) => [x;x]) [( 1%nat :nat )])) [ 1%nat; 1%nat])): Prop) .
Lemma concatMap_2:( ( (list_equal_by beq_nat(concat (List.map (fun (x : nat ) => [x;x]) [( 1%nat :nat ); 2%nat])) [ 1%nat; 1%nat; 2%nat; 2%nat])): Prop) .
Lemma concatMap_3:( ( (list_equal_by beq_nat(concat (List.map (fun (x : nat ) => [x;x]) [( 1%nat :nat ); 2%nat; 3%nat])) [ 1%nat; 1%nat; 2%nat; 2%nat; 3%nat; 3%nat])): Prop) .
Lemma concatMap_concat:( (forall ll,( (list_equal_by (fun x y => x = y) (concat ll) (concat (List.map (fun (l : list a) => l) ll))) : Prop)): Prop) .
Lemma concatMap_alt_def:( (forall f  l,( (list_equal_by (fun x y => x = y) (concat (List.map f l)) (List.fold_right (fun (l : b) (ll : list a) =>  (@ List.app _)(f l) ll) [] l)) : Prop)): Prop) . (* originally for_all *)
Lemmaall_def_lemma:((forallP l,(Bool.eqb (List.fold_left (fun (r : bool ) (e : a) => P e && r) l true) 
  (List.forallb P l) : Prop)): Prop) . 

Lemma all_0:( (List.forallb (fun (x : nat ) => nat_gtb x ( 2%nat :nat )) []): Prop) .
Lemma all_4:( (List.forallb (fun (x : nat ) => nat_gtb x ( 2%nat :nat )) [ 4%nat; 5%nat; 6%nat; 7%nat]): Prop) .
Lemma all_4_neg:( (negb (List.forallb (fun (x : nat ) => nat_gtb x ( 2%nat :nat )) [ 4%nat; 5%nat; 2%nat; 7%nat])): Prop) .

Lemma all_nil_thm:( (forall P,( List.forallb P [] : Prop)): Prop) .
Lemma all_cons_thm:( (forall P  e  l,( Bool.eqb (List.forallb P (e::l)) (P e && List.forallb P l) : Prop)): Prop) . (* originally exist *)
Lemmaany_def_lemma:((forallP l,(Bool.eqb (List.fold_left (fun (r : bool ) (e : a) => P e || r) l false) 
  (List.existsb P l) : Prop)): Prop) . 

Lemma any_0:( (negb (List.existsb (fun (x : nat ) => ( nat_ltb x ( 3%nat :nat ))) [])): Prop) .
Lemma any_4:( (negb (List.existsb (fun (x : nat ) => ( nat_ltb x ( 3%nat :nat ))) [ 4%nat; 5%nat; 6%nat; 7%nat])): Prop) .
Lemma any_4_neg:( (List.existsb (fun (x : nat ) => ( nat_ltb x ( 3%nat :nat ))) [ 4%nat; 5%nat; 2%nat; 7%nat]): Prop) .

Lemma any_nil_thm:( (forall P,( negb (List.existsb P []) : Prop)): Prop) .
Lemma any_cons_thm:( (forall P  e  l,( Bool.eqb (List.existsb P (e::l)) (P e || List.existsb P l) : Prop)): Prop) .

Lemma dest_init_0:( ( (maybeEqualBy ((fun (left : (list (nat )*nat ) % type) (right : (list (nat )*nat ) % type)=>(tuple_equal_by (list_equal_by beq_nat) beq_nat left right)))(dest_init ([] :list  nat )) None)): Prop) .
Lemma dest_init_1:( ( (maybeEqualBy ((fun (left : (list (nat )*nat ) % type) (right : (list (nat )*nat ) % type)=>(tuple_equal_by (list_equal_by beq_nat) beq_nat left right)))(dest_init [( 1%nat :nat )]) (Some ([], 1%nat)))): Prop) .
Lemma dest_init_2:( ( (maybeEqualBy ((fun (left : (list (nat )*nat ) % type) (right : (list (nat )*nat ) % type)=>(tuple_equal_by (list_equal_by beq_nat) beq_nat left right)))(dest_init [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat]) (Some ([ 1%nat; 2%nat; 3%nat; 4%nat], 5%nat)))): Prop) .

Lemma dest_init_nil :( ( (maybeEqualBy ((fun (left : (list a*a) % type) (right : (list a*a) % type)=>(tuple_equal_by (list_equal_by (fun x y => x = y)) (fun x y => x = y) left right)))(dest_init []) None)): Prop) .
Lemma dest_init_snoc:( (forall x  xs,( (maybeEqualBy ((fun (left : (list a*a) % type) (right : (list a*a) % type)=>(tuple_equal_by (list_equal_by (fun x y => x = y)) (fun x y => x = y) left right))) (dest_init ( (@ List.app _)xs [x])) (Some (xs, x))) : Prop)): Prop) .

Lemma index_0:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 0%nat)) (Some( 0%nat)))): Prop) .
Lemma index_1:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 1%nat)) (Some( 1%nat)))): Prop) .
Lemma index_2:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 2%nat)) (Some( 2%nat)))): Prop) .
Lemma index_3:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 3%nat)) (Some( 3%nat)))): Prop) .
Lemma index_4:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 4%nat)) (Some( 4%nat)))): Prop) .
Lemma index_5:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 5%nat)) (Some( 5%nat)))): Prop) .
Lemma index_6:( ( (maybeEqualBy beq_nat(index [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 6%nat)) None)): Prop) .

Lemma index_is_none:( (forall l  n,(  Bool.eqb( (maybeEqualBy (fun x y => x = y)(index l n) None)) ( nat_gteb n (List.length l)) : Prop)): Prop) .
Lemma index_list_eq:( (forall l1  l2,( ( Bool.eqb(forall n,( (maybeEqualBy (fun x y => x = y) (index l1 n) (index l2 n)) : Prop)) ( (list_equal_by (fun x y => x = y)l1 l2))) : Prop)): Prop) .

Lemma findIndices_1:( ( (list_equal_by beq_nat(findIndices (fun  (n:nat ) => nat_gtb n( 3%nat)) []) [])): Prop) .
Lemma findIndices_2:( ( (list_equal_by beq_nat(findIndices (fun  (n:nat ) => nat_gtb n( 3%nat)) [ 4%nat]) [ 0%nat])): Prop) .
Lemma findIndices_3:( ( (list_equal_by beq_nat(findIndices (fun  (n:nat ) => nat_gtb n( 3%nat)) [ 1%nat; 5%nat; 3%nat; 1%nat; 2%nat; 6%nat]) [ 1%nat; 5%nat])): Prop) .

Lemma find_index0 :( ( (maybeEqualBy beq_nat(findIndex (fun  (n:nat ) => nat_gtb n( 3%nat)) [ 1%nat; 2%nat]) None)): Prop) .
Lemma find_index1 :( ( (maybeEqualBy beq_nat(findIndex (fun  (n:nat ) => nat_gtb n( 3%nat)) [ 1%nat; 2%nat; 4%nat]) (Some( 2%nat)))): Prop) .
Lemma find_index2 :( ( (maybeEqualBy beq_nat(findIndex (fun  (n:nat ) => nat_gtb n( 3%nat)) [ 1%nat; 2%nat; 4%nat; 5%nat; 67%nat; 1%nat]) (Some( 2%nat)))): Prop) .

Lemma elemIndices_0 :( ( (list_equal_by beq_nat(findIndices (beq_nat ( 2%nat :nat )) []) [])): Prop) .
Lemma elemIndices_1 :( ( (list_equal_by beq_nat(findIndices (beq_nat ( 2%nat :nat )) [ 2%nat]) [ 0%nat])): Prop) .
Lemma elemIndices_2 :( ( (list_equal_by beq_nat(findIndices (beq_nat ( 2%nat :nat )) [ 2%nat; 3%nat; 4%nat; 2%nat; 4%nat; 2%nat]) [ 0%nat; 3%nat; 5%nat])): Prop) .

Lemma elemIndex_0 :( ( (maybeEqualBy beq_nat(findIndex (beq_nat ( 2%nat :nat )) []) None)): Prop) .
Lemma elemIndex_1 :( ( (maybeEqualBy beq_nat(findIndex (beq_nat ( 2%nat :nat )) [ 2%nat]) (Some( 0%nat)))): Prop) .
Lemma elemIndex_2 :( ( (maybeEqualBy beq_nat(findIndex (beq_nat ( 2%nat :nat )) [ 3%nat; 4%nat; 2%nat; 4%nat; 2%nat]) (Some( 2%nat)))): Prop) .

Lemma genlist_0:( ( (list_equal_by beq_nat(genlist (fun (n : nat ) => n)( 0%nat)) [])): Prop) .
Lemma genlist_1:( ( (list_equal_by beq_nat(genlist (fun (n : nat ) => n)( 1%nat)) [ 0%nat])): Prop) .
Lemma genlist_2:( ( (list_equal_by beq_nat(genlist (fun (n : nat ) => n)( 2%nat)) [ 0%nat; 1%nat])): Prop) .
Lemma genlist_3:( ( (list_equal_by beq_nat(genlist (fun (n : nat ) => n)( 3%nat)) [ 0%nat; 1%nat; 2%nat])): Prop) .
Lemma genlist_length:( (forall f  n,( ( beq_nat(List.length (genlist f n)) n) : Prop)): Prop) .
Lemma genlist_index:( (forall f  n  i,( ((negb (nat_ltb i n)) || (maybeEqualBy (fun x y => x = y) (index (genlist f n) i) (Some (f i)))) : Prop)): Prop) .

Lemma replicate_0:( ( (list_equal_by beq_nat(replicate( 0%nat) ( 2%nat :nat )) [])): Prop) .
Lemma replicate_1:( ( (list_equal_by beq_nat(replicate( 1%nat) ( 2%nat :nat )) [ 2%nat])): Prop) .
Lemma replicate_2:( ( (list_equal_by beq_nat(replicate( 2%nat) ( 2%nat :nat )) [ 2%nat; 2%nat])): Prop) .
Lemma replicate_3:( ( (list_equal_by beq_nat(replicate( 3%nat) ( 2%nat :nat )) [ 2%nat; 2%nat; 2%nat])): Prop) .
Lemma replicate_length:( (forall n  x,( ( beq_nat(List.length (replicate n x)) n) : Prop)): Prop) .
Lemma replicate_index:( (forall n  x  i,( ((negb (nat_ltb i n)) || (maybeEqualBy (fun x y => x = y) (index (replicate n x) i) (Some x))) : Prop)): Prop) .


Lemma splitAt_1:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (splitAt( 0%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) ([], [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])))): Prop) .
Lemma splitAt_2:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (splitAt( 2%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) ([ 1%nat; 2%nat], [ 3%nat; 4%nat; 5%nat; 6%nat])))): Prop) .
Lemma splitAt_3:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (splitAt( 100%nat) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) ([ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat], [])))): Prop) .

Lemma splitAt_append:( (forall n  xs,( 
  match ( splitAt n xs) with (xs1,  xs2) =>
    ( (list_equal_by (fun x y => x = y) xs ((@ List.app _) xs1 xs2))) end : Prop)): Prop) .

Lemma splitAt_length:( (forall n  xs,( 
  match ( splitAt n xs) with (xs1,  xs2) =>
    (( beq_nat (List.length xs1) n) ||
     (( beq_nat (List.length xs1) (List.length xs)) && null xs2)) end : Prop)): Prop) .

Lemma take_1:( ( (list_equal_by beq_nat(take( 0%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [])): Prop) .
Lemma take_2:( ( (list_equal_by beq_nat(take( 2%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat])): Prop) .
Lemma take_3:( ( (list_equal_by beq_nat(take( 100%nat) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .

Lemma drop_1:( ( (list_equal_by beq_nat(drop( 0%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .
Lemma drop_2:( ( (list_equal_by beq_nat(drop( 2%nat)   [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .
Lemma drop_3:( ( (list_equal_by beq_nat(drop( 100%nat) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [])): Prop) .

Lemma splitAt_take_drop:( (forall n  xs,( ((tuple_equal_by (list_equal_by (fun x y => x = y)) (list_equal_by (fun x y => x = y)) (splitAt n xs) (take n xs, drop n xs))) : Prop)): Prop) .

Lemma splitWhile_1:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (splitWhile (nat_gtb( 3%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) ([ 1%nat; 2%nat],[ 3%nat; 4%nat; 5%nat; 6%nat])))): Prop) .
Lemma splitWhile_2:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (splitWhile (nat_lteb( 6%nat)) ([] :  list  nat )) ([], [])))): Prop) .

Lemma dropWhile_0:( ( (list_equal_by beq_nat(dropWhile (nat_gtb( 3%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .
Lemma dropWhile_1:( ( (list_equal_by beq_nat(dropWhile (nat_gteb( 5%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 6%nat])): Prop) .
Lemma dropWhile_2:( ( (list_equal_by beq_nat(dropWhile (nat_gtb( 100%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [])): Prop) .
Lemma dropWhile_3:( ( (list_equal_by beq_nat(dropWhile (nat_ltb( 10%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .

Lemma takeWhile_0:( ( (list_equal_by beq_nat(takeWhile (nat_gtb( 3%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat])): Prop) .
Lemma takeWhile_1:( ( (list_equal_by beq_nat(takeWhile (nat_gteb( 5%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma takeWhile_2:( ( (list_equal_by beq_nat(takeWhile (nat_gtb( 100%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat; 6%nat])): Prop) .
Lemma takeWhile_3:( ( (list_equal_by beq_nat(takeWhile (nat_ltb( 10%nat)) [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat; 6%nat]) [])): Prop) .

Lemma isPrefixOf_0:( (isPrefixOf [] [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat]): Prop) .
Lemma isPrefixOf_1:( (isPrefixOf [ 0%nat] [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat]): Prop) .
Lemma isPrefixOf_2:( (isPrefixOf [ 0%nat; 1%nat; 2%nat] [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat]): Prop) .
Lemma isPrefixOf_3:( negb (isPrefixOf [ 0%nat; 2%nat] [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat]): Prop) .
Lemma isPrefixOf_4:( negb (isPrefixOf [( 0%nat :nat ); 1%nat; 2%nat; 3%nat; 4%nat] []): Prop) .

Lemma isPrefixOf_alt_def :(forall l1  l2,(  Bool.eqb(isPrefixOf l1 l2) (exists l3,( (list_equal_by (fun x y => x = y) l2 ( (@ List.app _)l1 l3)) : Prop)) : Prop): Prop) .
Lemma isPrefixOf_sym :(forall l,( isPrefixOf l l : Prop): Prop) .
Lemma isPrefixOf_trans :(forall l1  l2  l3,( ((negb (isPrefixOf l1 l2)) || ((negb (isPrefixOf l2 l3)) || isPrefixOf l1 l3)) : Prop): Prop) .
Lemma isPrefixOf_antisym :(forall l1  l2,( ((negb (isPrefixOf l1 l2)) || ((negb (isPrefixOf l2 l1)) || ( (list_equal_by (fun x y => x = y)l1 l2)))) : Prop): Prop) .

Lemma list_update_1:( ( (list_equal_by beq_nat(update []( 2%nat) ( 3%nat :nat )) [])): Prop) .
Lemma list_update_2:( ( (list_equal_by beq_nat(update [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 0%nat) ( 0%nat :nat )) [ 0%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma list_update_3:( ( (list_equal_by beq_nat(update [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 1%nat) ( 0%nat :nat )) [ 1%nat; 0%nat; 3%nat; 4%nat; 5%nat])): Prop) .
Lemma list_update_4:( ( (list_equal_by beq_nat(update [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 2%nat) ( 0%nat :nat )) [ 1%nat; 2%nat; 0%nat; 4%nat; 5%nat])): Prop) .
Lemma list_update_5:( ( (list_equal_by beq_nat(update [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat]( 5%nat) ( 0%nat :nat )) [ 1%nat; 2%nat; 3%nat; 4%nat; 5%nat])): Prop) .

Lemma list_update_length:( (forall l  n  e,( beq_nat (List.length (update l n e)) (List.length l) : Prop)): Prop) .
Lemma list_update_index:( (forall i  l  n  e,( 
  ( (maybeEqualBy beq_nat(index (update l n e) i) ((if beq_nat i n && nat_ltb n (List.length l) then Some e else index l e)))) : Prop)): Prop) .

Lemma elem_1:( (elem ( 2%nat :nat ) [ 3%nat; 1%nat; 2%nat; 4%nat]): Prop) .
Lemma elem_2:( (elem ( 3%nat :nat ) [ 3%nat; 1%nat; 2%nat; 4%nat]): Prop) .
Lemma elem_3:( (elem ( 4%nat :nat ) [ 3%nat; 1%nat; 2%nat; 4%nat]): Prop) .
Lemma elem_4:( (negb (elem ( 5%nat :nat ) [ 3%nat; 1%nat; 2%nat; 4%nat])): Prop) .

Lemma elem_spec:( ((forall e,( negb (elem e []) : Prop)) &&
                  (forall e  x  xs,( Bool.eqb (elem e (x :: xs)) ((e = x) || (elem e xs)) : Prop))): Prop) .

Lemma find_1:( ( (maybeEqualBy beq_nat(find (fun (n : nat ) => nat_gtb n ( 3%nat :nat )) []) None)): Prop) .
Lemma find_2:( ( (maybeEqualBy beq_nat(find (fun (n : nat ) => nat_gtb n ( 3%nat :nat )) [ 2%nat; 1%nat; 3%nat]) None)): Prop) .
Lemma find_3:( ( (maybeEqualBy beq_nat(find (fun (n : nat ) => nat_gtb n ( 3%nat :nat )) [ 2%nat; 1%nat; 5%nat; 4%nat]) (Some( 5%nat)))): Prop) .
Lemma find_4:( ( (maybeEqualBy beq_nat(find (fun (n : nat ) => nat_gtb n ( 3%nat :nat )) [ 2%nat; 1%nat; 4%nat; 5%nat; 4%nat]) (Some( 4%nat)))): Prop) .

Lemma find_in:( (forall P  l  x,( ((negb ( (maybeEqualBy (fun x y => x = y)(find P l) (Some x)))) || (P x && elem x l)) : Prop)): Prop) .
Lemma find_not_in:( (forall P  l,( Bool.eqb ( (maybeEqualBy (fun x y => x = y)(find P l) None)) (negb (List.existsb P l)) : Prop)): Prop) .

Lemma lookup_1 :( ( (maybeEqualBy beq_nat(lookupBy beq_nat ( 3%nat :nat ) ([( 4%nat, ( 5%nat :nat )); ( 3%nat, 4%nat); ( 1%nat, 2%nat); ( 3%nat, 5%nat)])) (Some( 4%nat)))): Prop) .
Lemma lookup_2 :( ( (maybeEqualBy beq_nat(lookupBy beq_nat ( 8%nat :nat ) ([( 4%nat, ( 5%nat :nat )); ( 3%nat, 4%nat); ( 1%nat, 2%nat); ( 3%nat, 5%nat)])) None)): Prop) .
Lemma lookup_3 :( ( (maybeEqualBy beq_nat(lookupBy beq_nat ( 1%nat :nat ) ([( 4%nat, ( 5%nat :nat )); ( 3%nat, 4%nat); ( 1%nat, 2%nat); ( 3%nat, 5%nat)])) (Some( 2%nat)))): Prop) .
Lemmafilter_def_lemma:((forallP l,((list_equal_by (fun x y => x = y) match ( l) with 
                       | [] => []
                       | x :: xs => if (P x) then x :: (List.filter P xs) else List.filter P xs
                     end 
  (List.filter P l)) : Prop)): Prop) .

Lemma filter_0:( ( (list_equal_by beq_nat(List.filter (fun (x : nat ) => nat_gtb x ( 4%nat :nat )) []) [])): Prop) .
Lemma filter_1:( ( (list_equal_by beq_nat(List.filter (fun (x : nat ) => nat_gtb x ( 4%nat :nat )) [ 1%nat; 2%nat; 4%nat; 5%nat; 2%nat; 7%nat; 6%nat]) [ 5%nat; 7%nat; 6%nat])): Prop) .
Lemma filter_nil_thm:( (forall P,( (list_equal_by (fun x y => x = y) (List.filter P []) []) : Prop)): Prop) .
Lemma filter_cons_thm:( (forall P  x  xs,( (list_equal_by (fun x y => x = y) (List.filter P (x::xs)) (let l'  := List.filter P xs in (if (P x) then x :: l' else l'))) : Prop)): Prop) .

Lemma partition_0:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (partition (fun (x : nat ) => nat_gtb x ( 4%nat :nat )) []) ([], [])))): Prop) .
Lemma partition_1:( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (partition (fun (x : nat ) => nat_gtb x ( 4%nat :nat )) [ 1%nat; 2%nat; 4%nat; 5%nat; 2%nat; 7%nat; 6%nat]) ([ 5%nat; 7%nat; 6%nat], [ 1%nat; 2%nat; 4%nat; 2%nat])))): Prop) .
Lemma partition_fst:( (forall P  l,( (list_equal_by (fun x y => x = y) ((@ fst _ _) (partition P l)) (List.filter P l)) : Prop)): Prop) .
Lemma partition_snd:( (forall P  l,( (list_equal_by (fun x y => x = y) ((@ snd _ _) (partition P l)) (List.filter (fun (x : a) => negb (P x)) l)) : Prop)): Prop) .

Lemma deleteFirst_1:( ( (maybeEqualBy (list_equal_by beq_nat)(deleteFirst (fun (x : nat ) => nat_gtb x ( 5%nat :nat )) [ 3%nat; 6%nat; 7%nat; 1%nat]) (Some [ 3%nat; 7%nat; 1%nat]))): Prop) .
Lemma deleteFirst_2:( ( (maybeEqualBy (list_equal_by beq_nat)(deleteFirst (fun (x : nat ) => nat_gtb x ( 15%nat :nat )) [ 3%nat; 6%nat; 7%nat; 1%nat]) None)): Prop) .
Lemma deleteFirst_3:( ( (maybeEqualBy (list_equal_by beq_nat)(deleteFirst (fun (x : nat ) => nat_gtb x ( 2%nat :nat )) [ 3%nat; 6%nat; 7%nat; 1%nat]) (Some [ 6%nat; 7%nat; 1%nat]))): Prop) .

Lemma delete_1:( ( (list_equal_by beq_nat(deleteBy beq_nat ( 6%nat :nat ) [( 3%nat :nat ); 6%nat; 7%nat; 1%nat]) [ 3%nat; 7%nat; 1%nat])): Prop) .
Lemma delete_2:( ( (list_equal_by beq_nat(deleteBy beq_nat ( 4%nat :nat ) [( 3%nat :nat ); 6%nat; 7%nat; 1%nat]) [ 3%nat; 6%nat; 7%nat; 1%nat])): Prop) .
Lemma delete_3:( ( (list_equal_by beq_nat(deleteBy beq_nat ( 3%nat :nat ) [( 3%nat :nat ); 6%nat; 7%nat; 1%nat]) [ 6%nat; 7%nat; 1%nat])): Prop) .
Lemma delete_4:( ( (list_equal_by beq_nat(deleteBy beq_nat ( 3%nat :nat ) [( 3%nat :nat ); 3%nat; 6%nat; 7%nat; 1%nat]) [ 3%nat; 6%nat; 7%nat; 1%nat])): Prop) .

Lemma zip_1 :( ( (list_equal_by ((fun (left : (nat *nat ) % type) (right : (nat *nat ) % type)=>(tuple_equal_by beq_nat beq_nat left right)))(zip [( 1%nat :nat ); 2%nat; 3%nat; 4%nat; 5%nat] [( 2%nat :nat ); 3%nat; 4%nat; 5%nat; 6%nat]) [( 1%nat, 2%nat);( 2%nat, 3%nat);( 3%nat, 4%nat);( 4%nat, 5%nat);( 5%nat, 6%nat)])): Prop) .

(* this test rules out List.combine for ocaml and ZIP for HOL, but it's needed to make it a total function *)
Lemma zip_2 :( ( (list_equal_by ((fun (left : (nat *nat ) % type) (right : (nat *nat ) % type)=>(tuple_equal_by beq_nat beq_nat left right)))(zip [( 1%nat :nat ); 2%nat; 3%nat] [( 2%nat :nat ); 3%nat; 4%nat; 5%nat; 6%nat]) [( 1%nat, 2%nat);( 2%nat, 3%nat);( 3%nat, 4%nat)])): Prop) .

Lemma unzip_1 :( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (unzip ([] :  list  ((nat  * nat ) % type))) ([], [])))): Prop) .
Lemma unzip_2 :( ( ((tuple_equal_by (list_equal_by beq_nat) (list_equal_by beq_nat) (unzip [(( 1%nat :nat ),( 2%nat :nat ));( 2%nat, 3%nat);( 3%nat, 4%nat)]) ([ 1%nat; 2%nat; 3%nat], [ 2%nat; 3%nat; 4%nat])))): Prop) .
