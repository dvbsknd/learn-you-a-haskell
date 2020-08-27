let composed x = replicate 100 . product . map (*3) . zipWith max [1,2,3,4,5] $ x
