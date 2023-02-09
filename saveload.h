#ifndef __SAVE_LOAD
#define __SAVE_LOAD



void SaveBest()
{
	u8 n, m;
	for (n=0;n<8;n++)
		for (m=0;m<8;m++)
		{
			put_mem(30, 32768+(n*8)+m, best[n].name[m]);
		}

	for (n=0;n<16;n+=2)
	{
		put_memw(30, 32768+64+n, best[n/2].scoreboard);
	}

	load_file("savelbrd", 30, 0);
	
	// vsync();
	// DOS(#0x7f-30, 6/*save*/, 1/*bloks*/, 1/*sector*/, 100/*track*/, 32768);
	// vsync();
}

void LoadBest()
{
	u8 n, m;
	
	load_file("savelbrd", 30, 1);
	
	// vsync();
	// DOS(#0x7f-30, 5/*load*/, 1/*bloks*/, 1/*sector*/, 100/*track*/, 32768);
	// vsync();
		
	for (n=0;n<8;n++)
		for (m=0;m<8;m++)
		{
			best[n].name[m]=get_mem(30, 32768+(n*8)+m);
		}

	for (n=0;n<16;n+=2)
	{
		best[n/2].scoreboard=get_memw(30, 32768+64+n);
	}
}

#endif