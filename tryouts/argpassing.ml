let opt_arg a a_sel a_inject =
  fun (sels, args) ->
    match a with
      | None -> sels, args
      | Some v -> a_sel :: sels, a_inject v :: args

let arg a a_sel a_inject =
  fun (sels, args) -> a_sel :: sels, a_inject a :: args


let (++) f g = fun x -> f (g x)

let c =  object
method foo ?a ?b bar =
     (opt_arg a "a:" (sprintf "%d")
  ++ opt_arg b "b:" (sprintf "%f")
  ++ arg bar "bar:" (sprintf "%s"))
  ([], [])
end

let x = c#foo ~a:1 ~b:1.2 "asd"


