#include "Header.h"

Field::Field()
{

}

Field::~Field()
{
}

void Field::Init()
{
	menu_pos = VectorGet(-MENU_WINDOW_SIZE_X, 50.0f);
	menu_1st_item[0] = "どうぐ";
	menu_1st_item[1] = "まほう";
	menu_1st_item[2] = "スキル";
	menu_1st_item[3] = "ステータス";
	menu_1st_item[4] = "オプション";
}

void Field::Updata(Player *player)
{
	MenuWindow(player);
}

void Field::Draw(Player * player, Comment_string * comment, Window * window)
{
	window->Command_Draw(menu_pos.x, menu_pos.y, menu_pos.x + MENU_WINDOW_SIZE_X, menu_pos.y + MENU_WINDOW_SIZE_Y);
	if (player->menu_open_flag)
	{
		for (int i = 0; i < 5; i++)
		{
			comment->Draw(menu_pos.x + 90.0f, menu_pos.y + 40.0f + (i*100.0f), menu_1st_item[i]);
		}
	}
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
		Command_Smooth(&menu_pos, VectorGet(50.0f, 50.0f), 0.3f);
	}
	else
	{
		Command_Smooth(&menu_pos, VectorGet(-MENU_WINDOW_SIZE_X, 50.0f), 0.3f);
	}
}

