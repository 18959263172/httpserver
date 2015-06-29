struct status_s
{
    int state;
    int size;   //unit MB
};

/*
 * for POST
*/
struct capture_s
{
    int     quant;      // 4 Bits(4, default), 8Bits (8)
    int     sample_rate;    // 4Mbits(4, default), 8Bits(8)
    int chan;       // CHAN_GPS, CHAN_COMPASS, CHAN_ALL
    int clk_ref;
};

struct file_s
{
    char f_name[32];
    int  f_size;
    int  quant;
    int  sample_rate;
    int  chan;
};

struct list_s
{
    int state;      //idle 0x01, capture 0x10, playback 0x11
    int nums;
    struct file_s *files;
};

struct playback_s
{
    int     action;
    int     chan;
    char    f_name[256];

};