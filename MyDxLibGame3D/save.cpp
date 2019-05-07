#include "Save.h"

Save* Save::save_instance = NULL;

Save* Save::GetInstance()
{
	if (save_instance == NULL)
	{
		save_instance = new Save();
	}
	return save_instance;
}

Save::Save()
{
	// �����Ȃ�
}

Save::~Save()
{
	// �����Ȃ�
}

bool Save::FileLoader(const char * _filename)
{
	//�t�@�C�����J��
	std::ifstream ifs(_filename);
	if (!ifs) { printfDx("����͂Ђ炯�˂����I"); return false; }

	//��ۑ�
	std::string line;
	//�t�@�C���̍Ō�܂Ń��[�v
	while (getline(ifs, line))
	{
		//�����ŃJ���}��؂�œǂݍ���
		std::vector<std::string> strvec = Split(line, ',');

		for (int row = 0; row < (int)strvec.size(); row++)
		{
			//�����ɕϊ��istring ==> int�j
			m_data_case_1[row] = stoi(strvec.at(row));
		}
	}
	return true;
}
bool Save::FileLoader(const char * _filename, const int line_num)
{
	//�t�@�C�����J��
	std::ifstream ifs(_filename);
	if (!ifs) { printfDx("����͂Ђ炯�˂����I"); return false; }

	//��ۑ�
	std::string line;
	//�t�@�C���̍Ō�܂Ń��[�v
	for (int i = 0; i < line_num; i++)
	{
		while (getline(ifs, line))
		{
			//�����ŃJ���}��؂�œǂݍ���
			std::vector<std::string> strvec = Split(line, ',');

			for (int row = 0; row < (int)strvec.size(); row++)
			{
				//�����ɕϊ��istring ==> int�j
				m_data_case_1[row] = stoi(strvec.at(row));
			}
		}
	}
	return true;
}

int Save::FileGeter(const int col, const int row)
{
	return m_data_case_2[row][col];
}

int Save::FileGeter(const int row)
{
	return m_data_case_1[row];
}

bool Save::Filewritier(const char * _filename, const float data)
{
	//�t�@�C���ɒǉ����ď�������
	std::ofstream fout(_filename);
	if (!fout) { printfDx("�����͂Ђ炯�˂���\n"); return false; }

	fout << data << "," << std::flush;
	return true;
}

bool Save::Filewritier(const char * _filename, const int size, const float * data)
{
	//�t�@�C���ɒǉ����ď�������
	std::ofstream fout(_filename);
	if (!fout) { printfDx("�����͂Ђ炯�˂���\n"); return false; }

	for (int i = 0; i < size; i++)
	{
		fout << data[i] << "," << std::flush;
	}
	return true;
}

std::vector<std::string> Save::Split(std::string & input, char split)
{
	std::istringstream stream(input);

	std::string field;
	std::vector<std::string> result;

	while (getline(stream, field, split))
	{
		result.push_back(field);
	}
	return result;
}
