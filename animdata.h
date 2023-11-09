#pragma once

#include<glm/glm.hpp>
struct BoneInfo
{
	/* ids is index in finalBoneMatrices */
	int id;

	/* offset matrix transforms vertex from model space to bone space*/
	glm::mat4 offset;
};
#pragma once