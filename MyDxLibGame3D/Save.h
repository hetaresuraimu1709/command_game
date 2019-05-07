//Save.h
#ifndef _SAVE_H_
#define _SAVE_H_

#include "DxLib.h"
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

class Save
{
public:
	~Save();
	static Save* GetInstance();

	bool FileLoader(const char *_filename);

	bool FileLoader(const char * _filename, const int line_num);

	int FileGeter(const int col, const int row);

	int FileGeter(const int row = 0);

	bool Filewritier(const char *_filename, const float data);

	bool Filewritier(const char *_filename, const int size, const float *data);

private:
	Save();
	std::vector<std::string> Split(std::string &input, char split);

	static Save* save_instance;

	int m_data_case_1[256];
	int m_data_case_2[256][256];

};

#define LOAD_FILE Save::GetInstance()


#endif