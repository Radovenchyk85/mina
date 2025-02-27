module V3 = struct
  type t = Transaction_snark.V3.t
end

module V2 = struct
  type t = Transaction_snark.V2.t
end

(* temp test *)
module Test = struct
  type test3 = { a : V3.t }
  type test2 = { a : V2.t }
end
