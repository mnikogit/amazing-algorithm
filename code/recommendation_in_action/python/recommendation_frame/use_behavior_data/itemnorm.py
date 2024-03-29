#! /usr/bin/python3
# coding=utf-8
"""
    ITEMCF-NORM算法
"""
from use_behavior_data.itemcf import ItemCF

class ItemNorm(ItemCF):
    """ItemCF-Norm"""
    def train(self, origin_data, sim_matrix_path="store/itemnorm_sim.pkl"):
        ItemCF.train(self, origin_data, sim_matrix_path=sim_matrix_path)
        
    def _item_similarity(self):
        item_sim_matrix = ItemCF._item_similarity(self)
        for i,relations in item_sim_matrix.items():
            max_num = max(relations)
            item_sim_matrix[i] = {key : value / max_num for key,value in relations.items()}
        return item_sim_matrix 