import glob, os, re
os.chdir(".")
folder = ".gitbook/assets/"
renames = []
for f in os.listdir(folder):
    src =f"{folder}{f}"
    dst =f"{folder}{f.replace(' ','_')}"
    os.rename(src,dst)
    renames.append([src, dst])
for file in glob.glob("**/*.md", recursive=True):
    #print(file)
    with open (file, 'r+', encoding="utf8" ) as f:
        content = f.read()
        content_new = re.sub('(\.\.\/)+(.*)(png|svg|jpeg)', r'\2\3', content, flags = re.M)
        for rep in renames:
            #print( "replacing " + ','.join(str(e) for e in rep))
            content_new = content_new.replace(rep[0].replace('_', ' '), rep[1])
        f.seek(0)
        f.write(content_new)
        f.truncate()