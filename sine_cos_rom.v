
module sine_cos_rom (
    input wire [7:0] index,
    output reg signed [7:0] cos_val,
    output reg signed [7:0] sin_val
);

always @(*) begin
    case (index)
        8'd0  : begin cos_val =  127; sin_val =    0; end
        8'd1  : begin cos_val =  127; sin_val =    3; end
        8'd2  : begin cos_val =  127; sin_val =    6; end
        8'd3  : begin cos_val =  127; sin_val =    9; end
        8'd4  : begin cos_val =  126; sin_val =   12; end
        8'd5  : begin cos_val =  126; sin_val =   16; end
        8'd6  : begin cos_val =  126; sin_val =   19; end
        8'd7  : begin cos_val =  125; sin_val =   22; end
        8'd8  : begin cos_val =  125; sin_val =   25; end
        8'd9  : begin cos_val =  124; sin_val =   28; end
        8'd10 : begin cos_val =  123; sin_val =   31; end
        8'd11 : begin cos_val =  122; sin_val =   34; end
        8'd12 : begin cos_val =  122; sin_val =   37; end
        8'd13 : begin cos_val =  121; sin_val =   40; end
        8'd14 : begin cos_val =  120; sin_val =   43; end
        8'd15 : begin cos_val =  118; sin_val =   46; end
        8'd16 : begin cos_val =  117; sin_val =   49; end
        8'd17 : begin cos_val =  116; sin_val =   51; end
        8'd18 : begin cos_val =  115; sin_val =   54; end
        8'd19 : begin cos_val =  113; sin_val =   57; end
        8'd20 : begin cos_val =  112; sin_val =   60; end
        8'd21 : begin cos_val =  111; sin_val =   63; end
        8'd22 : begin cos_val =  109; sin_val =   65; end
        8'd23 : begin cos_val =  107; sin_val =   68; end
        8'd24 : begin cos_val =  106; sin_val =   71; end
        8'd25 : begin cos_val =  104; sin_val =   73; end
        8'd26 : begin cos_val =  102; sin_val =   76; end
        8'd27 : begin cos_val =  100; sin_val =   78; end
        8'd28 : begin cos_val =   98; sin_val =   81; end
        8'd29 : begin cos_val =   96; sin_val =   83; end
        8'd30 : begin cos_val =   94; sin_val =   85; end
        8'd31 : begin cos_val =   92; sin_val =   88; end
        8'd32 : begin cos_val =   90; sin_val =   90; end
        8'd33 : begin cos_val =   88; sin_val =   92; end
        8'd34 : begin cos_val =   85; sin_val =   94; end
        8'd35 : begin cos_val =   83; sin_val =   96; end
        8'd36 : begin cos_val =   81; sin_val =   98; end
        8'd37 : begin cos_val =   78; sin_val =  100; end
        8'd38 : begin cos_val =   76; sin_val =  102; end
        8'd39 : begin cos_val =   73; sin_val =  104; end
        8'd40 : begin cos_val =   71; sin_val =  106; end
        8'd41 : begin cos_val =   68; sin_val =  107; end
        8'd42 : begin cos_val =   65; sin_val =  109; end
        8'd43 : begin cos_val =   63; sin_val =  111; end
        8'd44 : begin cos_val =   60; sin_val =  112; end
        8'd45 : begin cos_val =   57; sin_val =  113; end
        8'd46 : begin cos_val =   54; sin_val =  115; end
        8'd47 : begin cos_val =   51; sin_val =  116; end
        8'd48 : begin cos_val =   49; sin_val =  117; end
        8'd49 : begin cos_val =   46; sin_val =  118; end
        8'd50 : begin cos_val =   43; sin_val =  120; end
        8'd51 : begin cos_val =   40; sin_val =  121; end
        8'd52 : begin cos_val =   37; sin_val =  122; end
        8'd53 : begin cos_val =   34; sin_val =  122; end
        8'd54 : begin cos_val =   31; sin_val =  123; end
        8'd55 : begin cos_val =   28; sin_val =  124; end
        8'd56 : begin cos_val =   25; sin_val =  125; end
        8'd57 : begin cos_val =   22; sin_val =  125; end
        8'd58 : begin cos_val =   19; sin_val =  126; end
        8'd59 : begin cos_val =   16; sin_val =  126; end
        8'd60 : begin cos_val =   12; sin_val =  126; end
        8'd61 : begin cos_val =    9; sin_val =  127; end
        8'd62 : begin cos_val =    6; sin_val =  127; end
        8'd63 : begin cos_val =    3; sin_val =  127; end
        8'd64 : begin cos_val =    0; sin_val =  127; end
        8'd65 : begin cos_val =   -3; sin_val =  127; end
        8'd66 : begin cos_val =   -6; sin_val =  127; end
        8'd67 : begin cos_val =   -9; sin_val =  127; end
        8'd68 : begin cos_val =  -12; sin_val =  126; end
        8'd69 : begin cos_val =  -16; sin_val =  126; end
        8'd70 : begin cos_val =  -19; sin_val =  126; end
        8'd71 : begin cos_val =  -22; sin_val =  125; end
        8'd72 : begin cos_val =  -25; sin_val =  125; end
        8'd73 : begin cos_val =  -28; sin_val =  124; end
        8'd74 : begin cos_val =  -31; sin_val =  123; end
        8'd75 : begin cos_val =  -34; sin_val =  122; end
        8'd76 : begin cos_val =  -37; sin_val =  122; end
        8'd77 : begin cos_val =  -40; sin_val =  121; end
        8'd78 : begin cos_val =  -43; sin_val =  120; end
        8'd79 : begin cos_val =  -46; sin_val =  118; end
        8'd80 : begin cos_val =  -49; sin_val =  117; end
        8'd81 : begin cos_val =  -51; sin_val =  116; end
        8'd82 : begin cos_val =  -54; sin_val =  115; end
        8'd83 : begin cos_val =  -57; sin_val =  113; end
        8'd84 : begin cos_val =  -60; sin_val =  112; end
        8'd85 : begin cos_val =  -63; sin_val =  111; end
        8'd86 : begin cos_val =  -65; sin_val =  109; end
        8'd87 : begin cos_val =  -68; sin_val =  107; end
        8'd88 : begin cos_val =  -71; sin_val =  106; end
        8'd89 : begin cos_val =  -73; sin_val =  104; end
        8'd90 : begin cos_val =  -76; sin_val =  102; end
        8'd91 : begin cos_val =  -78; sin_val =  100; end
        8'd92 : begin cos_val =  -81; sin_val =   98; end
        8'd93 : begin cos_val =  -83; sin_val =   96; end
        8'd94 : begin cos_val =  -85; sin_val =   94; end
        8'd95 : begin cos_val =  -88; sin_val =   92; end
        8'd96 : begin cos_val =  -90; sin_val =   90; end
        8'd97 : begin cos_val =  -92; sin_val =   88; end
        8'd98 : begin cos_val =  -94; sin_val =   85; end
        8'd99 : begin cos_val =  -96; sin_val =   83; end
        8'd100: begin cos_val =  -98; sin_val =   81; end
        8'd101: begin cos_val = -100; sin_val =   78; end
        8'd102: begin cos_val = -102; sin_val =   76; end
        8'd103: begin cos_val = -104; sin_val =   73; end
        8'd104: begin cos_val = -106; sin_val =   71; end
        8'd105: begin cos_val = -107; sin_val =   68; end
        8'd106: begin cos_val = -109; sin_val =   65; end
        8'd107: begin cos_val = -111; sin_val =   63; end
        8'd108: begin cos_val = -112; sin_val =   60; end
        8'd109: begin cos_val = -113; sin_val =   57; end
        8'd110: begin cos_val = -115; sin_val =   54; end
        8'd111: begin cos_val = -116; sin_val =   51; end
        8'd112: begin cos_val = -117; sin_val =   49; end
        8'd113: begin cos_val = -118; sin_val =   46; end
        8'd114: begin cos_val = -120; sin_val =   43; end
        8'd115: begin cos_val = -121; sin_val =   40; end
        8'd116: begin cos_val = -122; sin_val =   37; end
        8'd117: begin cos_val = -122; sin_val =   34; end
        8'd118: begin cos_val = -123; sin_val =   31; end
        8'd119: begin cos_val = -124; sin_val =   28; end
        8'd120: begin cos_val = -125; sin_val =   25; end
        8'd121: begin cos_val = -125; sin_val =   22; end
        8'd122: begin cos_val = -126; sin_val =   19; end
        8'd123: begin cos_val = -126; sin_val =   16; end
        8'd124: begin cos_val = -126; sin_val =   12; end
        8'd125: begin cos_val = -127; sin_val =    9; end
        8'd126: begin cos_val = -127; sin_val =    6; end
        8'd127: begin cos_val = -127; sin_val =    3; end
        8'd128: begin cos_val = -127; sin_val =    0; end
        8'd129: begin cos_val = -127; sin_val =   -3; end
        8'd130: begin cos_val = -127; sin_val =   -6; end
        8'd131: begin cos_val = -127; sin_val =   -9; end
        8'd132: begin cos_val = -126; sin_val =  -12; end
        8'd133: begin cos_val = -126; sin_val =  -16; end
        8'd134: begin cos_val = -126; sin_val =  -19; end
        8'd135: begin cos_val = -125; sin_val =  -22; end
        8'd136: begin cos_val = -125; sin_val =  -25; end
        8'd137: begin cos_val = -124; sin_val =  -28; end
        8'd138: begin cos_val = -123; sin_val =  -31; end
        8'd139: begin cos_val = -122; sin_val =  -34; end
        8'd140: begin cos_val = -122; sin_val =  -37; end
        8'd141: begin cos_val = -121; sin_val =  -40; end
        8'd142: begin cos_val = -120; sin_val =  -43; end
        8'd143: begin cos_val = -118; sin_val =  -46; end
        8'd144: begin cos_val = -117; sin_val =  -49; end
        8'd145: begin cos_val = -116; sin_val =  -51; end
        8'd146: begin cos_val = -115; sin_val =  -54; end
        8'd147: begin cos_val = -113; sin_val =  -57; end
        8'd148: begin cos_val = -112; sin_val =  -60; end
        8'd149: begin cos_val = -111; sin_val =  -63; end
        8'd150: begin cos_val = -109; sin_val =  -65; end
        8'd151: begin cos_val = -107; sin_val =  -68; end
        8'd152: begin cos_val = -106; sin_val =  -71; end
        8'd153: begin cos_val = -104; sin_val =  -73; end
        8'd154: begin cos_val = -102; sin_val =  -76; end
        8'd155: begin cos_val = -100; sin_val =  -78; end
        8'd156: begin cos_val =  -98; sin_val =  -81; end
        8'd157: begin cos_val =  -96; sin_val =  -83; end
        8'd158: begin cos_val =  -94; sin_val =  -85; end
        8'd159: begin cos_val =  -92; sin_val =  -88; end
        8'd160: begin cos_val =  -90; sin_val =  -90; end
        8'd161: begin cos_val =  -88; sin_val =  -92; end
        8'd162: begin cos_val =  -85; sin_val =  -94; end
        8'd163: begin cos_val =  -83; sin_val =  -96; end
        8'd164: begin cos_val =  -81; sin_val =  -98; end
        8'd165: begin cos_val =  -78; sin_val = -100; end
        8'd166: begin cos_val =  -76; sin_val = -102; end
        8'd167: begin cos_val =  -73; sin_val = -104; end
        8'd168: begin cos_val =  -71; sin_val = -106; end
        8'd169: begin cos_val =  -68; sin_val = -107; end
        8'd170: begin cos_val =  -65; sin_val = -109; end
        8'd171: begin cos_val =  -63; sin_val = -111; end
        8'd172: begin cos_val =  -60; sin_val = -112; end
        8'd173: begin cos_val =  -57; sin_val = -113; end
        8'd174: begin cos_val =  -54; sin_val = -115; end
        8'd175: begin cos_val =  -51; sin_val = -116; end
        8'd176: begin cos_val =  -49; sin_val = -117; end
        8'd177: begin cos_val =  -46; sin_val = -118; end
        8'd178: begin cos_val =  -43; sin_val = -120; end
        8'd179: begin cos_val =  -40; sin_val = -121; end
        8'd180: begin cos_val =  -37; sin_val = -122; end
        8'd181: begin cos_val =  -34; sin_val = -122; end
        8'd182: begin cos_val =  -31; sin_val = -123; end
        8'd183: begin cos_val =  -28; sin_val = -124; end
        8'd184: begin cos_val =  -25; sin_val = -125; end
        8'd185: begin cos_val =  -22; sin_val = -125; end
        8'd186: begin cos_val =  -19; sin_val = -126; end
        8'd187: begin cos_val =  -16; sin_val = -126; end
        8'd188: begin cos_val =  -12; sin_val = -126; end
        8'd189: begin cos_val =   -9; sin_val = -127; end
        8'd190: begin cos_val =   -6; sin_val = -127; end
        8'd191: begin cos_val =   -3; sin_val = -127; end
        8'd192: begin cos_val =    0; sin_val = -127; end
        8'd193: begin cos_val =    3; sin_val = -127; end
        8'd194: begin cos_val =    6; sin_val = -127; end
        8'd195: begin cos_val =    9; sin_val = -127; end
        8'd196: begin cos_val =   12; sin_val = -126; end
        8'd197: begin cos_val =   16; sin_val = -126; end
        8'd198: begin cos_val =   19; sin_val = -126; end
        8'd199: begin cos_val =   22; sin_val = -125; end
        8'd200: begin cos_val =   25; sin_val = -125; end
        8'd201: begin cos_val =   28; sin_val = -124; end
        8'd202: begin cos_val =   31; sin_val = -123; end
        8'd203: begin cos_val =   34; sin_val = -122; end
        8'd204: begin cos_val =   37; sin_val = -122; end
        8'd205: begin cos_val =   40; sin_val = -121; end
        8'd206: begin cos_val =   43; sin_val = -120; end
        8'd207: begin cos_val =   46; sin_val = -118; end
        8'd208: begin cos_val =   49; sin_val = -117; end
        8'd209: begin cos_val =   51; sin_val = -116; end
        8'd210: begin cos_val =   54; sin_val = -115; end
        8'd211: begin cos_val =   57; sin_val = -113; end
        8'd212: begin cos_val =   60; sin_val = -112; end
        8'd213: begin cos_val =   63; sin_val = -111; end
        8'd214: begin cos_val =   65; sin_val = -109; end
        8'd215: begin cos_val =   68; sin_val = -107; end
        8'd216: begin cos_val =   71; sin_val = -106; end
        8'd217: begin cos_val =   73; sin_val = -104; end
        8'd218: begin cos_val =   76; sin_val = -102; end
        8'd219: begin cos_val =   78; sin_val = -100; end
        8'd220: begin cos_val =   81; sin_val =  -98; end
        8'd221: begin cos_val =   83; sin_val =  -96; end
        8'd222: begin cos_val =   85; sin_val =  -94; end
        8'd223: begin cos_val =   88; sin_val =  -92; end
        8'd224: begin cos_val =   90; sin_val =  -90; end
        8'd225: begin cos_val =   92; sin_val =  -88; end
        8'd226: begin cos_val =   94; sin_val =  -85; end
        8'd227: begin cos_val =   96; sin_val =  -83; end
        8'd228: begin cos_val =   98; sin_val =  -81; end
        8'd229: begin cos_val =  100; sin_val =  -78; end
        8'd230: begin cos_val =  102; sin_val =  -76; end
        8'd231: begin cos_val =  104; sin_val =  -73; end
        8'd232: begin cos_val =  106; sin_val =  -71; end
        8'd233: begin cos_val =  107; sin_val =  -68; end
        8'd234: begin cos_val =  109; sin_val =  -65; end
        8'd235: begin cos_val =  111; sin_val =  -63; end
        8'd236: begin cos_val =  112; sin_val =  -60; end
        8'd237: begin cos_val =  113; sin_val =  -57; end
        8'd238: begin cos_val =  115; sin_val =  -54; end
        8'd239: begin cos_val =  116; sin_val =  -51; end
        8'd240: begin cos_val =  117; sin_val =  -49; end
        8'd241: begin cos_val =  118; sin_val =  -46; end
        8'd242: begin cos_val =  120; sin_val =  -43; end
        8'd243: begin cos_val =  121; sin_val =  -40; end
        8'd244: begin cos_val =  122; sin_val =  -37; end
        8'd245: begin cos_val =  122; sin_val =  -34; end
        8'd246: begin cos_val =  123; sin_val =  -31; end
        8'd247: begin cos_val =  124; sin_val =  -28; end
        8'd248: begin cos_val =  125; sin_val =  -25; end
        8'd249: begin cos_val =  125; sin_val =  -22; end
        8'd250: begin cos_val =  126; sin_val =  -19; end
        8'd251: begin cos_val =  126; sin_val =  -16; end
        8'd252: begin cos_val =  126; sin_val =  -12; end
        8'd253: begin cos_val =  127; sin_val =   -9; end
        8'd254: begin cos_val =  127; sin_val =   -6; end
        8'd255: begin cos_val =  127; sin_val =   -3; end
        default: begin cos_val = 0; sin_val = 0; end
    endcase
end

endmodule
