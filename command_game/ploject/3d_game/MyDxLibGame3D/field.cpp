#include "Header.h"

Field::Field()
{

}

Field::~Field()
{
}

void Field::Init()
{
	LoadDivGraph("data/command/key.png", 8, 8, 1, 35, 25, key_graph);
	counter = 0;
	now_frame[0] = 0;
	menu_pos[0] = VectorGet(-MENU_WINDOW_SIZE_X_0, 50.0f);
	menu_pos[1] = VectorGet(50.0f, (float)SCREEN_H + 10.0f);
	key_pos[0] = VectorGet(menu_pos[0].x + 55.0f, menu_pos[0].y + 52.5f);
	menu_1st_item[0] = "どうぐ";
	menu_1st_item[1] = "まほう";
	menu_1st_item[2] = "スキル";
	menu_1st_item[3] = "ステータス";
	menu_1st_item[4] = "オプション";
}

void Field::Updata(Player *player)
{
	counter++;
	key_pos[0] = VectorGet(menu_pos[0].x + 55.0f, menu_pos[0].y + 52.5f);
	MenuWindow(player);
}

void Field::Draw(Player * player, Comment_string * comment, Window * window)
{
	window->Command_Draw(menu_pos[0].x, menu_pos[0].y, MENU_WINDOW_SIZE_X_0, MENU_WINDOW_SIZE_Y_0);
	window->Command_Draw(menu_pos[1].x, menu_pos[1].y, MENU_WINDOW_SIZE_X_1, MENU_WINDOW_SIZE_Y_1);
	if (player->menu_open_flag)
	{
		for (int i = 0; i < 5; i++)
		{
			comment->Draw(menu_pos[0].x + 90.0f, menu_pos[0].y + 40.0f + (i*100.0f), menu_1st_item[i]);
		}
	}
	//１つ目のコマンド用のカーソル
	now_frame[0] = (counter / 2) % 8;
	DrawGraph((int)key_pos[0].x, (int)key_pos[0].y, key_graph[now_frame[0]], TRUE);
}

void Field::MenuWindow(Player * player)
{
	if (getKey(KEY_INPUT_Q) == KEY_STATE_PUSHDOWN)
	{
		if (player->menu_open_flag)
		{
			player->menu_open_flag = false;
		}
		else
		{
			player->menu_open_flag = true;
		}
	}
	if (player->menu_open_flag)
	{
		Command_Smooth(&menu_pos[0], VectorGet(50.0f, 50.0f), 0.3f);
		Command_Smooth(&menu_pos[1], VectorGet(50.0f, (float)(SCREEN_H - (MENU_WINDOW_SIZE_Y_1 + 50.0f))), 0.3f);
	}
	else
	{
		Command_Smooth(&menu_pos[0], VectorGet(-MENU_WINDOW_SIZE_X_0, 50.0f), 0.3f);
		Command_Smooth(&menu_pos[1], VectorGet(50.0f, (float)SCREEN_H + 10.0f), 0.3f);
	}
}

