W='Head|shoulders|knees and|toes|and eyes|and ears|and mouth and|nose|'.split('|')
l='{0}, {1}, {2} {3}\n{2} {3}'
for i in range(9):print(l+'\n'+l+'\n{4} {5} {6} {7}\n'+l+'\n').format(*W);W[i]=' '.join(['...']*(W[i].count(' ')+1))