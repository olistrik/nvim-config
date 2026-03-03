let
  mkFoo = str: str;
in
if false then
  {
    ml-ml = /* lua */ ''
      function() end
    '';
    sl-ml =
      # lua
      "function() end";
    sl-sl =
      # lua
      "function() end"; # dunno why I need that space.
    ml-sl = /* lua */ "function() end";
    ml-sl-il = /* lua */ "function() end";
    fn-sl-sl =
      mkFoo
        # lua
        "function() end";
    fn-ml-sl-il = mkFoo /* lua */ "function() end";
    fn-ml-ml-il = mkFoo /* lua */ ''
      function() end
    '';

    # just another comment
    ml-bad =
      # eg
      mkFoo "";
  }
else
  { }
