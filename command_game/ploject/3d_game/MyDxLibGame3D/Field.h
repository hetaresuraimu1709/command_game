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
	int key_graph[8];
	int counter;
	int now_frame[1];
	Vector2 menu_pos[4];
	Vector2 key_pos[4];
	std::string menu_1st_item[5];
};

#endif//_FIELD_H_