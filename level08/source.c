int main(int arg0, int arg1) 
{
    var_A0 = arg1;
    var_8 = *0x28;
    if (arg0 != 0x2) 
            printf("Usage: %s filename\n", *var_A0);
    var_88 = fopen("./backups/.log", 0x400d6b);
    if (var_88 == 0x0) 
    {
            printf("ERROR: Failed to open %s\n", "./backups/.log");
            rax = exit(0x1);
    }
    else 
    {

            log_wrapper(var_88, "Starting back up: ", *(var_A0 + 0x8));
            var_80 = fopen(*(var_A0 + 0x8), 0x400da9);
            if (var_80 == 0x0) 
            {
                    printf("ERROR: Failed to open %s\n", *(var_A0 + 0x8));
                    rax = exit(0x1);
            }
            else 
            {
                    var_70 = *(int64_t *)"./backups/";
                    *(int16_t *)(&var_70 + 0x8) = *(int16_t *)("./backups/" + 0x8) & 0xffff;
                    *(int8_t *)(&var_70 + 0xa) = *(int8_t *)("./backups/" + 0xa) & 0xff;
                    rcx = 0xffffffffffffffff;
                    asm { repne scasb al, byte [rdi] };
                    strncat(&var_70, *(var_A0 + 0x8), (0x63 - !rcx) + 0x1);
                    rax = open(&var_70, 0xc1);
                    var_78 = rax;
                    if (var_78 < 0x0) 
                    {
                            printf("ERROR: Failed to open %s%s\n", "./backups/", *(var_A0 + 0x8));
                            rax = exit(0x1);
                    }
                    else 
                    {
                            do 
                            {
                                    var_71 = fgetc(var_80);
                                    if ((var_71 & 0xff) == 0xff) 
                                        break;
                                    write(var_78, &var_71, 0x1);
                            }
                            while (true);
                            log_wrapper(var_88, "Finished back up ", *(var_A0 + 0x8));
                            fclose(var_80);
                            close(var_78);
                            rax = 0x0;
                            rdi = var_8 ^ *0x28;
                            if (rdi != 0x0) 
                                    rax = __stack_chk_fail();
                    }
            }
    }
    return rax;
}