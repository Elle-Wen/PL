Hi Greg! Here is a README file for my typechecker and hopefully it makes grading my hw a easier process for you 

context: has type (string * typee) list 
constraints: has type (typee list) list. Each inner list is limited to two elements. Eg. [[T1;T2];[T3;T4];...]
substitution: has type (string * typee) list
FreshType string: is the fresh variable type 
VarType string: is the user defined variable type and normal VarType 

Top-Down Walkthrough:

tc_prog: 
    gets a list of bindings as input and call tc_prog_helper to recursively deal with each binding one by one 
    it adds the initial context when calling tc_prog_helper
    if typecheking is successful, it return a unit type 
    otherwise, it raises and error

tc_prog_helper:
    for each binding, it checkes if it is either a type definition binding or a let definition binding 
    if it is a type definition binding, it calls add_type_to_context to update context and calls tc_prog_helper to recuse on the rest of the bindings 
    if it is a let definition binding, it calls add_let_to_context to update context and calls tc_prog_helper to recuse on the rest of the bindings

add_type_to_context: 
    it takes id1 (the name of the user defined type), type_list (the list of constructors), and original context as input 
    it checks for each constructor if it has associated input types. 
    if no, the constructor just has type id1, and it adds it into the original context 
    if yes, the constructor has type input -> id1 and it adds it into the original context
    it returns the updated context

add_let_to_context:
    [let id1 params ty = body;;]
    it takes id1 (name of the let binding), params (the list of parameters), ty (optional type of body), body (the expression)
    it first call param_map_helper to get extra context and new constraints 
    it adds the extra context to the original context to get new_context
    it calls tc_expr to get the return type of body and new constraints, 
        it calls unify to unify the new constaints and get a list of substitution 
        it applies the substitution to the retuned type of body and then generalize it to get the final type of the let binding 
    it returns the updated context 

param_map_helper: 
    it takes idlst (a list of param) and cs
    it creates new type for each params 
    if the param has a specified type, it adds the new type to context, and adds the specified type and the new type to the constraints 
    if not, it just adds the new type to context 
    it returns the extra context and new constraints 

tc_expr: 
    it takes context, e (expression), cs (constraints), and returns the type of e and new constraints 
    IfExpr, VarExpr, IntExpr, TrueExpr, FalseExpr, StrExpr, BracketExpr, ComputeExpr, NotExpr are straightforward
    LetExpr: 
            [let id parameters tp = e1 in e2]
            first get extra+context and new_cs from the parameters 
            then run add_let_to_context to get new context (same procedure as dealing with let bindings)
            finally return tc_expr of e2 
    LetRecExpr: 
            the same as LetExpr except that we give id a new type and add it to context 
    FunExpr:
            [fun idlst: e1]
            first get extra context and new cs through parameter list
            then get the type of the function using extract_second(extract the types of parameters) and List.fold_right (ToType is right associative)
            if there is a specified type, we add it to the constriants 
    ExprExpr: 
            [e1 e2]
            get the types and constraints for e1 and e2
            return a new_var for the type of ExprExpr (e1,e2) and add constraints to restrain t1, t2, and FreshType new_var
    CommaExpr: 
            tc_expr_tuple_expr_helper: 
            it recursively adds the types of the expression list to be the returned type of the whole expression, and return the constraints 
    MatchExpr: 
            [match e1 with 
                | p1 -> e2
                | p2 -> e3
                | ...
                | pn -> en]
            first get the type and constraints of e1 
            then call tc_expr_match_expr_recurse to return the list of equivalent p_n (cs11) and e_n (cs22)
            return the first element of cs11 to be the retuned type
            call split_list_to_pairs_of_list to split the whole list to list of list with two elements 
            return the constraints for patterns and e1 + constraints for e_n + constraints for e1 

tc_expr_match_expr_recurse:
    recursively call tc_expr_match_expr_helper to get the list of types of p_n and e_n

tc_expr_match_expr_helper:
    for a single branch mb, return the returned type of the pattern and the type of the expression 
    first get the type of the constructor as tp_str
    it can only be either a VarType or a ToType 
    if it is a VarType, return VarType and the type of the expression 
    if it is a ToType, then we first need to extract the pattern variables 
        then we return the unser_defined type 
        and now we need to add restrains we get from the associated input types of the constructor and the input types of the pattern to our new context when evaluating expression. (e.g. we know the constructor Cons takes input type int*int and we see a pattern Cons (x,y)->e1, then we need to add [(x,int),(y,int)] to our context when evaluating e1)
        then we return the type of expression 

type_loopup: 
    return the type of a given id in context 

unify: 
    take a substituion and a constraints to return a substituition
    it deals with one pair of constraints at a time 
    it calls unify_single on an individual pair of constaints to get new_cs and new_sub
    it applies new_sub to new_cs + the rest of the cs to get new_cs_after_sub by calling apply_substitution
    it calls unify again on the new_sub + origianl sub on new_cs_after_sub
    it returns the final sub

unify_single: 
    it takes two types and do one instance of unification based on the rules, it generate cs for some types and sub for others 

apply_substitution:
    it takes a single sub and apply it to a list of cs to return a new cs 
    it calls apply_substituition_helper 

apply_substituition_helper:
    it takes a string (a), a type (t), and a list of cs, and replace all occurence of a in cs with t 
    it recuisively calls replace_type_var 

replace_type_var:
    it takes a string (var), a type (fresh_var), and a type (tp) and replace all occurence of var to be fresh_var in tp

subs_single_type: 
    it takes a list of subst and a type, and return the type after applying all possible subst
    it apply one substitution at a time by calling replace_type_var 

generalize: 
    it takes a context and a type and retunn a type after generalization
    it first collects free variable in the type by calling collect_free_var_type
    then it finds the list of target types by finding the variables that occurs free in type but does not occur in context 
    wrap the ForAllType to the type for each target type
