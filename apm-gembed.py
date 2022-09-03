
print('APMDL Graph Embedding start')

import sys
import time
import numpy as np
import networkx as nx
from pathlib import Path
from karateclub import GL2Vec

#gdot_path = "/home/cheewei/APM/gdot3"
#g2v_name_output = "/home/cheewei/APM/output/g2v_names_pred.txt"
#g2v_embd_output = "/home/cheewei/APM/output/g2v_embeddings_pred.txt"
gdot_path = "./gdot3"
g2v_name_output = "./output/g2v_names_pred.txt"
g2v_embd_output = "./output/g2v_embeddings_pred.txt"

t0 = time.time()
g2v_graphs = []
g2v_names = []
dot_files = Path(gdot_path).glob('*')
for dot_file in dot_files:
    print('dot: ', dot_file)
    try:
        nx_ingraph = nx.nx_pydot.read_dot(dot_file)
        nx_digraph = nx.DiGraph(nx_ingraph)
        nx_digraph = nx.convert_node_labels_to_integers(nx_digraph)
        g2v_graphs.append(nx_digraph)
        g2v_names.append(nx_digraph.graph['name'])
        t1 = time.time()
        print(('time: %.2fs' % (t1 - t0)).lstrip('0'))
    except:
        ex = sys.exc_info()[0]
        print("Error: %s" % ex)


print('GL2Vec: ', g2v_embd_output)
t0 = time.time()
g2v_model = GL2Vec(dimensions=128, workers=4, epochs=1000)
g2v_model.fit(g2v_graphs)

t1 = time.time()
g2v_embeddings = g2v_model.get_embedding()
print(('GL2Vec time: %.2fs' % (t1 - t0)).lstrip('0'))
print('dimension: ', g2v_model.dimensions)
print('shape:', g2v_embeddings.shape)
#print(g2v_embeddings)


with open(g2v_name_output, 'w') as out_file1:
    for g2v_name in g2v_names:
        out_file1.write("%s\n" % g2v_name)

with open(g2v_embd_output, 'w') as out_file2:
    np.set_printoptions(threshold=sys.maxsize)
    g2v_string = np.array2string(g2v_embeddings, max_line_width=150, precision=8, separator=' ', suppress_small=True)
    out_file2.writelines(g2v_string)

out_file1.close()
out_file2.close()

print('APMDL Graph Embedding end')

