

-- Run the olc.sql file before running this block.

do $$
DECLARE 
	l_codearea jsonb;
	l_code_1 text;
	l_code_2 text;
begin

	l_codearea := olc.decode('8FVC9G8F+6XQ'::text);

	ASSERT l_codearea IS NOT NULL,'l_codearea should not be null.';

	RAISE NOTICE 'l_codearea=%',l_codearea;

	SELECT olc.encode(47.365590, 8.524997,10), olc.encode(47.365590, 8.524997,11) INTO l_code_1,l_code_2;

	RAISE NOTICE 'l_code_1=%',l_code_1;
	RAISE NOTICE 'l_code_2=%',l_code_2;
end;
$$ language 'plpgsql';
