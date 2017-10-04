'''
Created By: Andre Hazim
Created For: ICS3U
Created On: -Sep-2017
Calculates the the height of the object above the ground 
'''

import ui

def calculate_button_touch_up_inside(sender):
    # constants 
    GRAVITY = 9.81
    HALF = 0.5
    
    #input
    seconds = float(view['seconds_textfield'].text)
 
    #process
    
    total_height = float(100 - HALF*GRAVITY*seconds**2)
    if total_height < 0:
        total_height = float(0.0)
    
    #output
    view['answer_label'].text = 'The height of the object above the ground is: ' + str(total_height) + str("m")

view = ui.load_view()
view.present('full_screen')
