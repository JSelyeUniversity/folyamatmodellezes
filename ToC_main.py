import os

def create_toc(root_dir, output_file):    
    with open(output_file, 'a', encoding='utf-8') as toc_file:
        toc_file.write(f"# Table of Contents for {os.path.basename(root_dir)}\n\n")
        
        for dirpath, dirnames, filenames in os.walk(root_dir):            
            level = dirpath.replace(root_dir, '').count(os.sep)
            indent = '    ' * level
            toc_file.write(f"{indent}- **{os.path.basename(dirpath)}**\n")            
            
            for filename in sorted(filenames):
                toc_file.write(f"{indent}    - {filename}\n")
   
root_directory = "Jegyzet_melleklet"
output_filename = "README.md"
    
create_toc(root_directory, output_filename)
print(f"Table of Contents has been saved to {output_filename}")