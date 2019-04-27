//Battle.h
#ifndef _BATTLE_H_
#define _BATTLE_H_

#include "DxLib.h"
#include <fstream>
#include <string>
#include <sstream>
#include <vector>

class LoadFile
{
public:
	~LoadFile();
	static LoadFile* GetInstance();

	bool FileLoader(const char *_filename);

	int FileGeter(const int col, const int row);

	int FileGeter(const int row = 0);

	bool Filewritier(const char *_filename, const float data);

	bool Filewritier(const char *_filename, const int data);

	bool Filewritier(const char *_filename, const int size, const int *data);

private:
	LoadFile();
	std::vector<std::string> Split(std::string &input, char split);

	static LoadFile* save_instance;

	int m_data_case_1[256];
	int m_data_case_2[256][256];

};

#define LOAD_FILE LoadFile::GetInstance()


#endif