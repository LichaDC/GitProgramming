from PIL import Image
import pytesseract
pytesseract.pytesseract.tesseract_cmd = r'<full_path_to_your_tesseract_executable>'
print(pytesseract.image_to_string(Image.open('ojo.png')))
