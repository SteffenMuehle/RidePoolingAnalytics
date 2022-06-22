gr()
myfont="Computer Modern"

#julia figure size
width_px=800
height_px=600
upscale = 2 #upscaling in fig size here

#latex figure size
latex_width_cm=5.450
latex_height_cm=latex_width_cm*height_px/width_px

#latex font size
latex_tiny_font=6
latex_small_font=7
latex_medium_font=8
latex_large_font=10

#latex font size
latex_tiny_fontheight_cm=latex_tiny_font*0.0352778
latex_small_fontheight_cm=latex_small_font*0.0352778
latex_medium_fontheight_cm=latex_medium_font*0.0352778
latex_large_fontheight_cm=latex_large_font*0.0352778

#heuristic: top end 'WJ' to bottom end 'pq': plot(size=(1200,600)); annotate!(0.5,0.597,text("WJqp", :black, font(432,"Computer Modern")))
heuristic_factor = 423/800  # for font 'Times'
heuristic_factor = 432/800  # for font 'Computer Modern'

#based on actually comparing the length of letters in final latex. pfusch.
correction=(3.9/3.3)*(3.9/3.95)*(3.9/3.65)

#julia font size
fnttn_px = upscale * correction * heuristic_factor * height_px * latex_tiny_fontheight_cm / latex_height_cm
fntsm_px = upscale * correction * heuristic_factor * height_px * latex_small_fontheight_cm / latex_height_cm
fntmd_px = upscale * correction * heuristic_factor * height_px * latex_medium_fontheight_cm / latex_height_cm
fntlg_px = upscale * correction * heuristic_factor * height_px * latex_large_fontheight_cm / latex_height_cm

#make it an Integer
pointtn=Integer(round(fnttn_px))
pointsm=Integer(round(fntsm_px))
pointmd=Integer(round(fntmd_px))
pointlg=Integer(round(fntlg_px))

#define fonts
fnttn = font(myfont, pointsize=pointtn)
fntsm = font(myfont, pointsize=pointsm)
fntmd = font(myfont, pointsize=pointmd)
fntlg = font(myfont, pointsize=pointlg)

#plot defaults
default(titlefont=fntmd, guidefont=fntmd, tickfont=fntsm, legendfontsize=pointtn, fontfamily=myfont)
default(size=(width_px*upscale,height_px*upscale)) #Plot canvas size
default(dpi=300) #Only for PyPlot - presently broken
default(left_margin=upscale*14Plots.pt,right_margin=upscale*19Plots.pt,bottom_margin=upscale*15Plots.pt,top_margin=upscale*10Plots.pt)
default(frame=:box,grid=:none)
default(linewidth=2.5*upscale,markersize=5*upscale,marker=:circle)