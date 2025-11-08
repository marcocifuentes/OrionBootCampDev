// Exercício 4: NoSQL (Consultas Avançadas)
// Aluno: Marco Cifuentes
// Bootcamp: Orion - New Rizon

// Banco: orion_db
// Coleção: posts

// 1. Comando de Atualização (Update)
//
// (Executado visualmente no Compass)
// Filtro: { "titulo": "O que é NoSQL?" }
// Dados Adicionados:
{
  "comentarios": [
      { "usuario": "Ana Silva", "texto": "Ótima explicação!" },
      { "usuario": "Bruno Costa", "texto": "Muito útil, obrigado." }
  ]
}

// 2. Consulta por Autor
//
db.posts.find({ "autor": "Thallis André" });

// 3. Consulta por Tag (dentro de um array)
//
db.posts.find({ "tags": "nosql" });