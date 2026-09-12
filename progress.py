from datetime import date

root = 'progress/'
files = [
    'exe.md',
    'credits.md',
    'titlescreen_and_loading.md',
    'guidebook.md',
    'level_10.md',
    'level_11.md',
    'level_12.md',
    'level_13.md',
    'level_21.md',
    'level_22.md',
    'level_23.md',
    'level_25.md',
    'level_26.md',
    'level_30.md',
    'level_31.md',
    'level_32.md',
    'level_33.md',
    'level_34.md',
    'level_35.md',
    'level_41.md',
    'level_42.md',
    'level_43.md',
    'level_44.md',
    'level_45.md',
    'level_46.md',
    'level_50.md',
    'level_51.md',
    'level_52.md',
    'level_55.md',
    'level_61.md',
    'level_62.md',
    'level_65.md',
    'level_66.md'
]

doneTotal = 0
todoTotal = 0
doneList = []
todoList = []

for file in files:
    with open(root + file, 'r') as f:
        progress = f.read()
    doneList.append(progress.count('[x]'))
    todoList.append(progress.count('[ ]'))
    doneTotal += doneList[-1]
    todoTotal += todoList[-1]

table = '\
|                            | EXE     | Overlays | Total   |\n\
| -------------------------- | ------- | -------- | ------- |\n\
| Total C functions matching | %d/%d | %d/%d | %d/%d |\n\
| Progress percentage        | %3.2f%% | %3.2f%% | %3.2f%% |'

print("Last updated:", date.today())
print(table % (doneList[0], doneList[0] + todoList[0],
               doneTotal - doneList[0], doneTotal + todoTotal - doneList[0] - todoList[0],
               doneTotal, doneTotal + todoTotal,
               100*doneList[0]/(doneList[0] + todoList[0]),
               100*(doneTotal - doneList[0])/(doneTotal + todoTotal - doneList[0] - todoList[0]),
               100*doneTotal/(doneTotal + todoTotal)))

print("\nStatus table:")
i = 0
while i < len(files):
    print("%d/%d | %3.2f%%" % (doneList[i], doneList[i] + todoList[i],100*doneList[i]/(doneList[i] + todoList[i])))
    i += 1

