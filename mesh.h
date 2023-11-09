#ifndef MESH_H
#define MESH_H

#include <glad/gl.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "shader.h"
#include <string>
#include <vector>
using namespace std;

#define MAX_BONE_INFLUENCE 4

struct Vertex {
	glm::vec3 Position;
	glm::vec3 Normal;
	glm::vec2 TexCoords;
	glm::vec3 Tangent;
	glm::vec3 Bitangent;
	// indices de ossos que influenciarao esse vertice
	int m_BoneIDs[MAX_BONE_INFLUENCE];
	// pesos de cada ossos
	float m_Weights[MAX_BONE_INFLUENCE];
};

struct Texture {
	unsigned int id;
	string type;
	string path;
};

class Mesh {
public:
	// dados de ossos
	vector<Vertex>			vertices;
	vector<unsigned int>	indices;
	vector<Texture>			textures;
	unsigned int VAO;

	// construtor

	Mesh(
		vector<Vertex> vertices,
		vector<unsigned int> indices,
		vector<Texture> textures
	)
	{
		this->vertices = vertices;
		this->indices = indices;
		this->textures = textures;

		// definir os buffers dos vértices e atribuir os ponteiros.
		setupMesh();
	}

	// renderizer a malha
	void Draw(Shader& shader)
	{
		// vincular texturas apropriadas
		unsigned int diffuseNr = 1;
		unsigned int specularNr = 1;
		unsigned int normalNr = 1;
		unsigned int heightNr = 1;
		for (unsigned int i = 0; i < textures.size(); i++)
		{
			glActiveTexture(GL_TEXTURE0 + i); // ativa a texture apropriada antes de vincular
			// receber o numero da texture (o N em diffuse_textureN)
			string number;
			string name = textures[i].type;
			if (name == "texture_diffuse")
				number = std::to_string(diffuseNr++);
			else if (name == "texture_specular")
				number = std::to_string(specularNr++); // converter int nao assinado em string 
			else if (name == "texture_normal")
				number = std::to_string(normalNr++); // converter int nao assinado em string
			else if (name == "texture_height")
				number = std::to_string(heightNr++); // converter int nao assinado em string

			// configurar a amostra para a texture correta
			glUniform1i(glGetUniformLocation(shader.ID, (name + number).c_str()), i);
			// e finalmente vincular a textura
			glBindTexture(GL_TEXTURE_2D, textures[i].id);
		}

		// desenhar a malha
		glBindVertexArray(VAO);
		glDrawElements(
			GL_TRIANGLES,
			static_cast<unsigned int>(indices.size()),
			GL_UNSIGNED_INT,
			0
		);
		glBindVertexArray(0);

		// eh sempre uma boa pratica retornar tudo de volta para o padrao uma vez configurado
		glActiveTexture(GL_TEXTURE0);
	}
private:
	// renderizar dados
	unsigned int VBO, EBO;

	// inicializa todos os buffers objetos e arrays
	void setupMesh()
	{
		// criar buffers/arrays
		glGenVertexArrays(1, &VAO);
		glGenBuffers(1, &VBO);
		glGenBuffers(1, &EBO);

		glBindVertexArray(VAO);
		// carregar os dados no vertex buffer
		glBindBuffer(GL_ARRAY_BUFFER, VBO);

		// o layout de memroai de uma struct é sequencial para todos os seus itens
		// O efeito é que podemos passar um ponteiro para a struct e converter para um array glm::vec3/2
		// que novamente se converter para floats 3/2 que converte para um byte array
		glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(Vertex), &vertices[0], GL_STATIC_DRAW);

		glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
		glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned int), &indices[0], GL_STATIC_DRAW);

		// definir os ponteiros do vertex attrib 
		glEnableVertexAttribArray(0);
		// vertex Positions
		glEnableVertexAttribArray(0);
		glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)0);
		// vertex normals
		glEnableVertexAttribArray(1);
		glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, Normal));
		// vertex texture coords
		glEnableVertexAttribArray(2);
		glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, TexCoords));

		// vertex tangent
		glEnableVertexAttribArray(3);
		glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, Tangent));
		// vertex bitangent
		glEnableVertexAttribArray(4);
		glVertexAttribPointer(4, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, Bitangent));
		// ids
		glEnableVertexAttribArray(5);
		glVertexAttribIPointer(5, 4, GL_INT, sizeof(Vertex), (void*)offsetof(Vertex, m_BoneIDs));

		// weights
		glEnableVertexAttribArray(6);
		glVertexAttribPointer(6, 4, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)offsetof(Vertex, m_Weights));
		glBindVertexArray(0);

	}
	
}; 
#endif;