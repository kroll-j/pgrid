; struct asm_gridpt 
; muss mit t_grid::t_gridpoint übereinstimmen
struc asm_gridpt
    .dummy1		resd 1
    .color     		resd 1
    .x              	resd 1
    .y              	resd 1
    
    .height         	resd 1
    .speedmod_x     	resd 1
    .speedmod_y     	resd 1
    .dummy2	  	resd 1
endstruc	; 32 bytes
