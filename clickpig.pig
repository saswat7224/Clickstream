click_input = LOAD '$input';
click_output = foreach click_input generate $1;
STORE click_output INTO '$output';
