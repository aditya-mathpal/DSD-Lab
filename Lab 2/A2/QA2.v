module QA2(a,b,ci,co,s,land,lnand,lnor,lor,lxor,lxnor);
	input a,b,ci;
	output co,s,land,lnand,lnor,lor,lxor,lxnor;
	assign co = (a&b)|(a&ci)|(b&ci);
	assign s = a^b^ci;
	assign land = co&(~(ci^s));
	assign lnand = ~(co&(~(ci^s)));
	assign lnor = ~co&(~(ci^s));
	assign lor = co|(ci^s);
	assign lxor = (~ci&s)|(ci&~s);
	assign lxnor = ~((~ci&s)|(ci&~s));
endmodule
