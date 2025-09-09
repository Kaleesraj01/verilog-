module net_types (
    output wand a,
    output wor  b,
    output tri  c,
    output triand d
);
    assign a = 0;
    assign a = 1;

    assign b = 1;
    assign b = 0;

    assign c = 1;
    assign c = 1;

    assign d = 1;
    assign d = 0;

    initial begin
        $monitor("Time=%0t | wand=%b wor=%b tri=%b triand=%b",
                  $time, a, b, c, d);
        #10 $finish;
    end
endmodule

