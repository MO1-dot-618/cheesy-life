import requests
from bs4 import BeautifulSoup

# URL of the Wikipedia page
url = "https://en.wikipedia.org/wiki/List_of_cheeses"

# Send a GET request to the URL
response = requests.get(url)

# Parse the HTML content
soup = BeautifulSoup(response.content, 'html.parser')

# Find all tables on the page
tables = soup.find_all('table', class_='wikitable')

# Iterate over each table
for table in tables:
    # Find all rows in the table
    rows = table.find_all('tr')
    
    # Iterate over each row (skipping the header row)
    for row in rows[1:]:
        # Extract data from each cell in the row
        cells = row.find_all(['td', 'th'])
        if len(cells) >= 4:
            cheese_name = cells[0].text.strip()
            cheese_image = cells[1].find('img')['src'] if cells[1].find('img') else None
            cheese_region = cells[2].text.strip()
            cheese_description = cells[3].text.strip()
            
            # Print or process the extracted data as needed
            print("Name:", cheese_name)
            print("Image:", cheese_image)
            print("Region:", cheese_region)
            print("Description:", cheese_description)
            print()
