from PIL import Image

tamanio = (300, 300)

image1 = Image.open('manu.jpg')

image1 = image1.rotate(90) # Rotate the object counterclockwise

image1 = image1.convert(mode='L') # Make it black and white

image1.show()

image1.thumbnail(tamanio) # Convert it to 300px x 300px

image1.save('foto.jpg')# image1.save('manu.png') # Save the photo
