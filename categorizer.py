import ollama
import os

model = "llama3.2"

input_path = "./data/grocery_list.txt"
output_path = "./data/categorized_grocery_list.txt"

if not os.path.exists(input_path):
    print(f"Input file not found: {input_path}")
    exit(1)

with open(input_path, "r") as f:    
    grocery_list = f.read().strip()
    
prompt = f"""
You are an assistant that categorizes and sort grocery items into sections.
Here is a grocery list:
{grocery_list}

Please:
1. Categorize each item into one of the following sections: Produce, Dairy, Meat, Bakery, Frozen, Beverages, Snacks, Household Items, Other.
2. Sort items within each section alphabetically.
3. Present the categorized list in a clear and organized manner format, using bullet points or numbering.
"""

try:
    response = ollama.generate(
        model=model,
        prompt=prompt,
    )
    generated_text = response.get("response", "")
    
    with open(output_path, "w") as f:
        f.write(generated_text)
    
    print(f"Categorized Grocery List: {generated_text}")
except Exception as e:
    print(f"An error occurred during generation: {e}")
    exit(1)