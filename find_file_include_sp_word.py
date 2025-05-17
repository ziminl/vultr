import os

def find_files_with_text(root_dir, target_text):
    for dirpath, dirnames, filenames in os.walk(root_dir):
        for filename in filenames:
            filepath = os.path.join(dirpath, filename)
            try:
                with open(filepath, 'r', encoding='utf-8') as f:
                    if target_text in f.read():
                        print(filepath)
            except Exception:
                pass

if __name__ == "__main__":
    find_files_with_text('.', '<word>')
