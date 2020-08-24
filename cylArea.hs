cylArea :: (RealFloat a) => a -> a -> a
cylArea r h = 
  let side = 2 * pi * r * h
      ends = pi * r ^ 2
  in  2 * ends + side
