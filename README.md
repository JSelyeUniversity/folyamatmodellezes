# Folyamatmodellezés és számítógépes szimuláció a MATLAB-ban

**Szerzők: Kmeť Tibor, Annuš Norbert, Csóka Márk, Paksi Dávid**


Fájlnevek magyarázata:

P - példa

F - forráskód  


| P           | _1      | _2        | _a                       | 2*                      | _minta                      | .m               |
|-------------|---------|-----------|--------------------------|-------------------------|-----------------------------|------------------|
| típus (P/F) | fejezet | alfejezet | példa/forráskód jelölése | példa/forráskód sorszáma| példa/forráskód megnevezése | fájlkiterjesztés |

*opcionális# 

# Tartalomjegyzék

- **Jegyzet_melléklet**
    - **2. Folytonos rendszerek (DESS)**
        - **2.1.1. Populációs modellek**
            - P_2_1_a_Exponencialis_novekedes.slx
            - P_2_1_b_Logisztikus_novekedes.slx
            - P_2_1_c_Logisztikus_novekedes_idoeltolassal.slx
            - P_2_1_d_Predacio_modell.slx
            - P_2_1_e_Kompeticio_modell.slx
        - **2.1.2. Lorenz attraktor**
        - **2.1.3. Kocsi modellek**
            - F_2_1_l_Kosarlabda_elkapasa_plot.m
            - P_2_1_f_Egyszeru_kocsi_modell.slx
            - P_2_1_g_Kocsi_modell_kulso_erohatassal.slx
            - P_2_1_h_Kocsi_modell_raketaval.slx
            - P_2_1_i_Tempomat_modell.slx
            - P_2_1_j_Forditott_inga_egyensulyozasa_kocsin.slx
            - P_2_1_k_Csillapitott_inga.slx
            - P_2_1_l_Kosarlabda_elkapasa.slx
        - **2.2.2. Parciális differenciálegyenletek numerikus megoldása**
            - F_2_2_2_6_forward.m
            - F_2_2_2_7_crnich.m
            - F_2_2_2_8_rcd.m
            - F_2_2_2_9_rcd_neumann.m
        - **2.2.3. Részleges differenciálegyenletek pdepe segítségével**
            - F_2_2_3_10_diffuzios_kompeticio_rendszer.m
            - F_2_2_3_11_kemosztat.m
        - **2.2.4. Késleltetési differenciálegyenlet numerikus megoldása - Lineáris spline közelítés**
            - P_2_2_d_konstans_kesleltetesu.m
            - P_2_2_e_zsakmany_ragadozo.m
    - **3. Diszkrét rendszerek (DTSS)**
        - **3.1.1. Matematikai számsorozatok**
        - **3.1.2. Kölcsöntörlesztés**
        - **3.1.3. Populációs modellek**
            - F3_1_3_14_bifurkacios_diagram.m
            - F3_1_3_15_feigenbaum_diagram.m
            - P_3_1_d_Exponencialis_novekedes.slx
            - P_3_1_e_Logisztikus_novekedes.slx
            - P_3_1_f_Logisztikus_novekedes_idoeltolassal.slx
            - P_3_1_g_Horgaszatai_modell.slx
            - P_3_1_h_Predacio_modell.slx
        - **3.2.1. Egyszerű sejtautomaták**
            - P_3_2_a_wolfram.m
            - P_3_2_b_game_of_life.m
            - P_3_2_c_langton.m
            - P_3_2_d1_seeds.m
            - P_3_2_d2_brians_brain.m
            - P_3_2_e1_SIR.m
            - P_3_2_e2_SIR_CA.m
    - **4. Diszkrét eseményű rendszerek (DEVS)**
        - **4.2. Markov-láncok**
            - F_4_2_23_Egyenletes_eloszlas.m
            - F_4_2_24_Binomialis_eloszlas.m
            - F_4_2_25_Geometriai_eloszlas.m
            - F_4_2_26_Poisson_eloszlas.m
            - F_4_2_27_Exponencialis_eloszlas.m
            - F_4_2_28_Normalis_eloszlas.m
            - P_4_2_a_Szines_labdak.m
            - P_4_2_b_Minosegellenorzes.m
            - P_4_2_c_Kockadobasok.m
            - P_4_2_d1_Markov.m
            - P_4_2_d2_Markov_n9.m
            - P_4_2_d3_Markov_econometrics_toolbox.m
            - P_4_2_e_Pagerank.m
        - **4.3. Sorbanállási rendszerek**
            - P_4_3_a_Periodikus.slx
            - P_4_3_b_FIFO_LIFO.slx
            - P_4_3_c_Eroforras.slx
            - P_4_3_d_Eroforraskezeles.slx
    - **5. Hibrid rendszerek (DEV&DESS)**
    - **6. Modellezés és szimulációs eszközök**
        - **6.2.1. Alapvető Simevents blokkok bemutatása**
            - F_6_2_1a_Veletlen.m
            - F_6_2_1b_Exponencialis.m
            - F_6_2_1c_Poisson.m
            - F_6_2_1d_Robbanasszeru.m
        - **6.3.1. Alapvető Stateflow blokkok bemutatása**
            - F_6_3_1_Igazsagtabla.m
