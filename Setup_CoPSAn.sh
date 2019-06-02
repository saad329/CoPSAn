#!/bin/sh

#goto function

goto ()
{
	label=$1
	cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
	eval "$cmd"
	exit
}

#WELCOME
#Password Funtion
Password ()
{
if sudo -n true 2>/dev/null; then
    echo "Super User Access Enabled"
	start;
else
   PASSWD="$(zenity --password --title=Authetication\n)";
case $? in
   	 0)
			echo -e $PASSWD | sudo -S echo " ";
			Password;
			exit ;;
         1) zenity 	--question \
			--text "Are you sure you want to exit the installation?" \
			--ok-label=Yes \
			--width=500 \
			--title="CoPSAn v1.0 Setup" \
			--cancel-label=No;
		case $? in
   			 0)
				echo "Installation Cancelled";
				exit ;;
    			 1)
				echo "Installation resumed";
				goto start;;
    			 -1)
        			echo "An unexpected error has occurred.";;
		esac;;
        -1)
                echo "An unexpected error has occurred.";
		zenity --error --width=500 --text "Error occurred during installation.";
		exit ;;
esac
fi
}
start:
#exit_case
exit_case(){
case $? in

         1) zenity 	--question \
			--text "Are you sure you want to exit the installation?" \
			--ok-label=Yes \
			--width=500 \
			--title="CoPSAn v1.0 Setup" \
			--cancel-label=No;
		case $? in
   			 0)
				echo "Installation Cancelled";
				exit ;;
    			 1)
				echo "Installation resumed";
				goto start;;
    			 -1)
        			echo "An unexpected error has occurred.";;
		esac;;
        -1)
                echo "An unexpected error has occurred.";
		zenity --error --width=500 --text "Error occurred during installation.";
		exit ;;
esac

}

#Starting Point====================================================================================
Password;
zenity 	--question \
	--height=400 --width=500 \
	--ok-label=Next \
	--cancel-label=Cancel \
	--title="CoPSAn v1.0 Setup" \
	--text="<span color=\"blue\"><b><big>Welcome</big></b></span>\n\n \
Welcome to CoPSAn v1.0 Setup Wizard\n \
-------------------------------------------------------------------------------------------------------
CoPSAn is a software package which installs all the necessary tools required for techniques  using in protien structure analysis \n \
CoPSAn implements the  software pipeline related to the tools using in Protien Structure Analysis. It also provide a seperate GUI Application to run each installed tool.\n\n\n\n\n\n\n\n\n \
Click Next to continue or Cancel to exit setup.\n"
exit_case;



#==================File Selection
cd shell_ubuntu;
shell_file=$(pwd);
cd opt
sudo mkdir CoPSAn
cd CoPSAn
sudo mkdir TOOLS
cd TOOLS
#==========================================================Selection Screen Tools
selection=$(zenity --list --checklist \
	--width=500 --height=400  --title="CoPSAn v1.0 Setup" --text="Select the tools which are given below thier techniques you want to install." --separator=':'\
	--column="Select" --column="Sr" --column="Tool name" --column="Size (MB)"\
        FALSE 	: 	"PAIRWISE STRUCTURE ALIGNMENT"	""\
	FALSE 	1 	"SHEBA"		          	"1.32"\
	FALSE 	2 	"DeepAlign" 			"76.9"\
	FALSE 	3 	"MICAN"			        "1.40"\
	FALSE 	4 	"SAS-Pro"			"22.9"\
	FALSE 	5 	"DEDAL"			        "13.2"\
	FALSE 	6 	"Biotite"			"8.5"\
	FALSE 	7 	"CAB-Align"			"0.24"\
	FALSE 	8 	"SAMO"				"8.75"\
	FALSE 	9 	"THREADPAIR"			"0.46"\
	FALSE 	10 	"QS-align"			"0.34"\
        FALSE 	: 	"MULTIPLE STRUCTURE ALIGNMENT"	""\
	FALSE 	11	"Kpax"			         "1.72"\
        FALSE 	:   "SEQUENCE ANNOTATION VISUALIZATION"  ""\
	FALSE 	12 	"PyMOL"			        "10.5"\
	FALSE 	13 	"CueMol"			"199.4"\
	FALSE 	14	"BioJava-ModFinder"		"18.6"\
        FALSE 	: 	"QUALITY ASSESSMENT"	         ""\
	FALSE 	15 	"NEPRE"			        "10.6"\
	FALSE 	16 	"SIFT"		         	"0.16"\
	FALSE 	17 	"Sklearn-lvq"			"0.482"\
        FALSE 	: 	"Crystallization Detection"	""\
	FALSE 	18 	"cctbx"			       "30"\
	FALSE 	19 	"coot"			       "39.9"\
	FALSE 	20 	"DeepCrystal"		       "0.43"\
	FALSE 	21 	"TMCrys"		       "8.6"\
        FALSE 	: 	"Functional Site Detection"	""\
	FALSE 	22 	"DeepFam"			"8.7"\
	FALSE 	23	"Rappertk"			"97.9"\
	FALSE 	24 	"KinConform"			"15.9"\
	FALSE 	25	"MoRFPred-plus"			"16.8"\
	FALSE 	26	"ALLO"			        "5.4"\
        FALSE 	:   "PROTEIN-PROTEIN STRUCTURE DETECTION"	""\
	FALSE 	27 	"Scipion"			"29.2"\
        FALSE 	: 	"STRUCTURE REFINEMENT"	""\
	FALSE 	28 	"RELION"			"2.75"\
	FALSE 	29	"Mumbo"			        "3.9"\
	FALSE 	30 	"SPRING"			"0.792"\
	FALSE 	31 	"RosettaES"			"21"\
	FALSE 	32 	"SHELX"		         	"1.9"\
	FALSE 	33	"deltaGseg"			"5.4"\
        FALSE 	: 	"FOLD RECOGNITION"	""\
	FALSE 	34 	"PconsFold"			"6.8"\
	FALSE 	35	"EigenTHREADER"			"2.2"\
	FALSE 	36	"3DCNNMQA"			"25.7"\
	FALSE 	37	"DCAXL"			        "6.7"\
	FALSE 	38	"AGAPE"		          	"13.5"\
	FALSE 	39	"SSThread"			"8.7"\
	FALSE 	40	"SSKDSP"			"21"\
	FALSE 	41 	"SeqKernel"			"10.1"\
	FALSE 	42 	"SCOPE"		        	"21.9"\
        FALSE 	: 	"FOLD RATE PREDICTION"	""\
	FALSE 	43 	"sarw-lnkf"			"53"\
        FALSE 	: 	"STRUCTURE DECOY CREATION"	""\
	FALSE 	44 	"Decoyfinder"			"3.2"\
        FALSE 	: 	"PROTEIN DESIGN"	""\
	FALSE 	45 	"ISAMBARD"			"15.7"\
	FALSE 	46	"IPRO"			        "10.6"\
	FALSE 	47	"iCFN"		        	"800"\
	FALSE 	48	"GAPSSIF"			"6.9"\
	FALSE 	49 	"rstoolbox"			"198"\
	FALSE 	50	"OSPREY"			"17.2"\
	FALSE 	51	"pNeRF"		         	"85.2")
echo $selection


#===================================================Installation proceed
zenity 	--question \
	--text "<span><b>Ready to install</b></span>\n
Setup is now ready to install CoPSAn on your computer." \
	--title="CoPSAn v1.0 Setup" \
	--height=400 --width=500 \
	--ok-label=Install \
	--cancel-label=Cancel \

exit_case

cd shell_ubuntu;
#Tools Installation Preprocessing Screen
if [ -z "$selection" ] ; then
   	echo "No Tools selected.";
  	zenity --error --width=500 --text "No Tools selected to install.";
exit;
fi
(
   echo $selection
    IFS=":" ; for word in $selection ; do
   case $word in


1)
cd $shell_file;
echo "# Installing sheba";
chmod +x sheba_ubuntu.sh;
sudo ./ sheba_ubuntu.sh;
sleep 2;;


2)
cd $shell_file;
echo "# Installing Deepalign";
chmod +x Deepalign_ubuntu.sh;
sudo ./Deepalign_ubuntu.sh;
sleep 2;;

3)
cd $shell_file;
echo "# Installing MICAN";
chmod +x MICAN_ubuntu.sh;
sudo ./MICAN_ubuntu.sh;
sleep 2;;

4)
cd $shell_file;
echo "# Installing SAS-Pro";
chmod +x SAS-Pro_ubuntu.sh;
sudo ./SAS-Pro_ubuntu.sh;
sleep 2;;


5)
cd $shell_file;
echo "# Installing DEDAL";
chmod +x DEDAL_ubuntu.sh;
sudo ./DEDAL_ubuntu.sh;
sleep 2;;


6)
cd $shell_file;
echo "# Installing biotite";
chmod +x biotite_ubuntu.sh;
sudo ./biotite_ubuntu.sh;
sleep 2;;


7)
cd $shell_file;
echo "# Installing CABalign";
chmod +x CABalign_ubuntu.sh;
sudo ./CABalign_ubuntu.sh;
sleep 2;;


8)
cd $shell_file;
echo "# Installing SAMOS";
chmod +x SAMOS_ubuntu.sh;
sudo ./ SAMOS_ubuntu.sh;
sleep 2;;



9)
cd $shell_file;
echo "# Installing Threadpair";
chmod +x Threadpair_ubuntu.sh;
sudo ./Threadpair_ubuntu.sh;
sleep 2;;


10)
cd $shell_file;
echo "# Installing QS-align";
chmod +x QS-align_ubuntu.sh;
sudo ./QS-align_ubuntu.sh;
sleep 2;;


11)
cd $shell_file;
echo "# Installing kpax";
chmod +x kpax_ubuntu.sh;
sudo ./kpax_ubuntu.sh;
sleep 2;;


12)
cd $shell_file;
echo "# Installing pymol";
chmod +x pymol_ubuntu.sh;
sudo ./ pymol_ubuntu.sh;
sleep 2;;


13)
cd $shell_file;
echo "# Installing cuemol";
chmod +x cuemol_ubuntu.sh;
sudo ./cuemol_ubuntu.sh;
sleep 2;;


14)
cd $shell_file;
echo "# Installing biojavaModfinder";
chmod +x biojavaModfinder_ubuntu.sh;
sudo ./biojavaModfinder_ubuntu.sh;
sleep 2;;

15)

	cd $shell_file;

	echo "# Installing Nepre" ;
           chmod +x Nepre_ubuntu.sh;
	sudo ./Nepre_ubuntu.sh;
	sleep 2;;


16)
cd $shell_file;
echo "# Installing sift";
chmod +x sift_ubuntu.sh;
sudo ./ sift_ubuntu.sh;
sleep 2;;


17)

	cd $shell_file;

	echo "# Installing sklearn-lvq" ;
	chmod +x sklearn-lvq_ubuntu.sh;
		sudo ./sklearn-lvq_ubuntu.sh;
	sleep 2;;


18)
cd $shell_file;
echo "# Installing cctbx";
chmod +x cctbx_ubuntu.sh;
sudo ./cctbx_ubuntu.sh;
sleep 2;;


19)
cd $shell_file;
echo "# Installing coot";
chmod +x coot_ubuntu.sh;
sudo ./coot_ubuntu.sh;
sleep 2;;


20)

	cd $shell_file;
	echo "# Installing DeepCrystal" ;

	chmod +x DeepCrystal_ubuntu.sh;
		sudo ./DeepCrystal_ubuntu.sh;
	sleep 2;;


21)

	cd $shell_file;
	echo "# Installing tmcrys" ;

	chmod +x tmcrys_ubuntu.sh;

		sudo ./tmcrys_ubuntu.sh;
	sleep 2;;


22)
	cd $shell_file;
	echo "# Installing DeepFam" ;

	chmod +x DeepFam_ubuntu.sh;
		sudo ./DeepFam_ubuntu.sh;
	sleep 2;;


23)
cd $shell_file;
echo "# Installing rappertk";
chmod +x rappertk_ubuntu.sh;
sudo ./ rappertk_ubuntu.sh;
sleep 2;;


24)
cd $shell_file;
echo "# Installing kinconform";
chmod +x kinconform_ubuntu.sh;
sudo ./kinconform_ubuntu.sh;
sleep 2;;


25)
cd $shell_file;
echo "# Installing MoRFpred";
chmod +x MoRFpred_ubuntu.sh;
sudo ./ MoRFpred_ubuntu.sh;
sleep 2;;


26)

	cd $shell_file;
	echo "# Installing ALLO" ;

	chmod +x ALLO_ubuntu.sh ;
		sudo ./ALLO_ubuntu.sh;
	sleep 2;;


27)
cd $shell_file;
echo "# Installing scipion";
chmod +x scipion_ubuntu.sh;
sudo ./ scipion_ubuntu.sh;
sleep 2;;



28)
cd $shell_file;
echo "# Installing relion";
chmod +x relion_ubuntu.sh;
sudo ./ relion_ubuntu.sh;
sleep 2;;



34)
	cd $shell_file;
	echo "# Installing pcons-fold" ;
	chmod +x pcons-fold_ubuntu.sh;
		sudo ./pcons-fold_ubuntu.sh;
	sleep 2;;



42)
       cd $shell_file;
echo "# Installing Scope";
chmod +x Scope_ubuntu.sh;
sudo ./Scope_ubuntu.sh;
sleep 2;;



43)
	cd $shell_file;
	echo "# Installing sarw-lnkf" ;
	chmod +x sarw-lnkf_ubuntu.sh;
		sudo ./sarw-lnkf_ubuntu.sh;
	sleep 2;;



44)

	cd $shell_file;
	echo "# Installing DecoyFinder" ;
	chmod +x DecoyFinder_ubuntu.sh ;
		sudo ./DecoyFinder_ubuntu.sh;
	sleep 2;;


45)

	cd $shell_file;

	echo "# Installing isambard" ;
	chmod +x isambard_ubuntu.sh;
		sudo ./isambard_ubuntu.sh;
	sleep 2;;


46)

	cd $shell_file;
	echo "# Installing IPRO" ;
	chmod +x IPRO_ubuntu.sh;
		sudo ./IPRO_ubuntu.sh;
	sleep 2;;


48)

	cd $shell_file;
	echo "# Installing GAPSSIF" ;
	chmod +x GAPSSIF_ubuntu.sh;
		sudo ./GAPSSIF_ubuntu.sh;
	sleep 2;;


50)
cd $shell_file;
echo "# Installing OSPREY";
chmod +x OSPREY_ubuntu.sh;
sudo ./ OSPREY_ubuntu.sh;
sleep 2;;


51)

	cd $shell_file;

	echo "# Installing pnerf" ;
	chmod +x pnerf_ubuntu.sh;
		sudo ./pnerf_ubuntu.sh;

	sleep 2;;

	51)
	cd $shell_file;
	echo "# Installing pnerf" ;
	chmod +x pnerf_ubuntu.sh;
		sudo ./pnerf_ubuntu.sh;
	sleep 2;;



	esac
done
) |
zenity 	--progress \
  	--title="CoPSAn v1.0 Setup" \
 	--text="CoPSAn Tools installation in progress..." \
	--height=400 --width=500 \
	--pulsate \
  	--auto-close\
  	--auto-kill \
#Installation finished
zenity 	--info \
	--text "<span><b>Completing the CoPSAn Setup Wizard</b></span>\n
Click Finish to exit the CoPSAn Setup Wizard." \
	--title="CoPSAn v1.0 Setup" \
	--height=400 --width=500 \
	--ok-label=Finish
