// field.h
#ifndef _FIELD_H_
#define _FIELD_H_

class Window;

class Field
{
public:
	Field();
	~Field();
	void Init();
	void Updata(Player *player);
	void Draw(Player * player, Comment_string * comment, Window * window);
private:
	void MenuWindow(Player *player);
	Vector2 menu_pos;
	std::string menu_1st_item[5];
};

#endif//_FIELD_H_