#include "Header.h"

Field::Field()
{

}

Field::~Field()
{
}

void Field::Init()
{
}

void Field::Updata()
{
}

void Field::Draw(Player * player, Comment_string * comment, Window * window)
{
	window->Command_Draw(menu_pos.x, menu_pos.y, menu_pos.x, menu_pos.y)
}

void Field::MenuWindow(Player * player)
{
	if (getKey(KEY_INPUT_Q) == KEY_STATE_PUSHDOWN)
	{
		player->menu_open_flag = true;
	}
	if (player->menu_open_flag)
	{

	}
}

