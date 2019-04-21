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
	void Updata();
	void Draw(Player * player, Comment_string * comment, Window * window);
private:
	void MenuWindow(Player *player);
	Vector2 menu_pos;
};

#endif//_FIELD_H_