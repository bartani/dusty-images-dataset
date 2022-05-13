# An adaptive optic-physic based dust removal method using optimized air-light and transfer function
Multimedia Tools and Applications (2022). https://doi.org/10.1007/s11042-022-13109-2

## Intoduction
In recent years, computer vision is used in different applications. In these applications, images may be contaminated by different factors such as clouds, shadow, haze, fog, and dust phenomena. The dust phenomenon caused environmental problems in certain regions of the world. This phenomenon, which reduced visibility, acts as a barrier against the object’s light reflection to the eyes or camera lens. There are few studies relating to removing dust from images, while haze removal has received more attention. The haze removal methods have been examined for removing dust that haven’t proper performance. Thus, we propose a new physic-optic based method to remove dust from images properly. Here, the air-light estimation on the dark channel histogram is modified and a new method is used to estimate the weight of the dust-based transmission function per pixel in the R, G, and B channels, separately. Experimental results indicate that the proposed method appropriately removes dust from the images which contain different density of dust. It should be noted that output images have high contrast, good brightness level, and natural colors. Moreover, the proposed method can be used for removing haze from hazy images as a suitable method that achieves better or acceptable results than popular and recent haze removal methods. Experiments indicate that the PCQI value of the proposed method for two dusty datasets is about 1.24 on average, while this value for the best state-of-the-art method is about 1.15 on average. These values for hazy images are 1.33, and 1.15, respectively.

## Usage
```
Open main.m file in your matlab
Enter your dusty image path
Run it..
```
## Dusty images dataset

This database is a diverse collection of dust images with different densities that have been captured in different environments by news agencies, social network users and meteorological satellite. These images have different sizes, brightness and resolution. 

If you use these codes or dataset in your research, please cite:
```
@article{bartani2022adaptive,
  title={An adaptive optic-physic based dust removal method using optimized air-light and transfer function},
  author={Bartani, Ako and Abdollahpouri, Alireza and Ramezani, Mohsen and Tab, Fardin Akhlaghian},
  journal={Multimedia Tools and Applications},
  pages={1--27},
  year={2022},
  publisher={Springer}
}
```
