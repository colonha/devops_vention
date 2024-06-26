exports.seed = async function (knex) {
  await knex("compositions").del();
  return await knex("compositions").insert([
    { parent_id: 1, material_id: 2, qty: 2 },
    { parent_id: 2, material_id: 3, qty: 5 },
    { parent_id: 2, material_id: 4, qty: 5 },
    { parent_id: 3, material_id: 5, qty: 5 },
    { parent_id: 3, material_id: 12, qty: 1 },
    { parent_id: 6, material_id: 2, qty: 1 },
    { parent_id: 6, material_id: 7, qty: 2 },
    { parent_id: 6, material_id: 8, qty: 3 },
    { parent_id: 9, material_id: 10, qty: 5 },
    { parent_id: 10, material_id: 11, qty: 10 }
  ]);
};
