
extern "C"
{
    void x86_fade_height(struct asm_gridpt *points, float mul, int size);
    void tsc_start();
    u64 tsc_stop();
};
