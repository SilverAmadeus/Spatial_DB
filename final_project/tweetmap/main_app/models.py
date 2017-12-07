from django.db import models
from django.contrib.gis.db import models
from django.contrib.gis.geos import GEOSGeometry

# Create your models here.


class Tweet(models.Model):
	category = models.FloatField()
	user = models.CharField(max_length=50, null=False)
	text = models.TextField(max_length=280, null=False)
	location = models.PointField(srid=4326)

	def __str__(self):
		template = '{0.user} {0.text} {0.location}'
		return template.format(self)


class MxDistrito(models.Model):
    clavegeo = models.CharField(max_length=20)
    entidad = models.IntegerField()
    distrito = models.IntegerField()
    graproes = models.FloatField()
    graproes_f = models.FloatField()
    graproes_m = models.FloatField()
    hogjef_f = models.FloatField()
    hogjef_m = models.FloatField()
    ocupvivpar = models.FloatField()
    p12ym_casa = models.FloatField()
    pcon_lim = models.FloatField()
    pclim_men2 = models.FloatField()
    pclim_mot = models.FloatField()
    pclim_aud = models.FloatField()
    pclim_leng = models.FloatField()
    pclim_men = models.FloatField()
    pclim_vis = models.FloatField()
    pclim_mot2 = models.FloatField()
    potras_rel = models.FloatField()
    pcatolica = models.FloatField()
    p_3ymas = models.FloatField()
    p_5ymas = models.FloatField()
    p_0a2 = models.FloatField()
    p_12a14 = models.FloatField()
    p12a14noa = models.FloatField()
    p_12ymas = models.FloatField()
    p_15a17 = models.FloatField()
    p15a17a = models.FloatField()
    pob15_64 = models.FloatField()
    p_15ymas = models.FloatField()
    p15ym_an = models.FloatField()
    p15pri_co = models.FloatField()
    p15pri_in = models.FloatField()
    p15sec_co = models.FloatField()
    p15sec_in = models.FloatField()
    p15ym_se = models.FloatField()
    p_18a24 = models.FloatField()
    p18a24a = models.FloatField()
    p_18ymas = models.FloatField()
    p18ym_pb = models.FloatField()
    p_3a5 = models.FloatField()
    p3a5_noa = models.FloatField()
    p3ym_hli = models.FloatField()
    p3hli_he = models.FloatField()
    p3hlinhe = models.FloatField()
    p5_hli = models.FloatField()
    p5_hli_he = models.FloatField()
    p5_hli_nhe = models.FloatField()
    pres2005 = models.FloatField()
    presoe05 = models.FloatField()
    p_6a11 = models.FloatField()
    p6a11_noa = models.FloatField()
    p_60ymas = models.FloatField()
    pob65_mas = models.FloatField()
    p_8a14 = models.FloatField()
    p8a14an = models.FloatField()
    pob0_14 = models.FloatField()
    pder_ss = models.FloatField()
    pder_imss = models.FloatField()
    pder_iste = models.FloatField()
    pder_istee = models.FloatField()
    pder_segp = models.FloatField()
    pdesocup = models.FloatField()
    pea = models.FloatField()
    pobhog = models.FloatField()
    phogjef_f = models.FloatField()
    phogjef_m = models.FloatField()
    phog_ind = models.FloatField()
    pobfem = models.FloatField()
    p8a14an_f = models.FloatField()
    p_0a2_f = models.FloatField()
    p_12a14_f = models.FloatField()
    p12a14noaf = models.FloatField()
    p_12ymas_f = models.FloatField()
    p_15a17_f = models.FloatField()
    p15a17a_f = models.FloatField()
    p_15a49_f = models.FloatField()
    p_15ymas_f = models.FloatField()
    p15ym_an_f = models.FloatField()
    p15pri_cof = models.FloatField()
    p15pri_inf = models.FloatField()
    p15sec_cof = models.FloatField()
    p15sec_inf = models.FloatField()
    p15ym_se_f = models.FloatField()
    p_18a24_f = models.FloatField()
    p18a24a_f = models.FloatField()
    p_18ymas_f = models.FloatField()
    p18ym_pb_f = models.FloatField()
    p_3a5_f = models.FloatField()
    p3a5_noa_f = models.FloatField()
    p_3ymas_f = models.FloatField()
    p3ym_hli_f = models.FloatField()
    p3hli_he_f = models.FloatField()
    p3hlinhe_f = models.FloatField()
    p_5ymas_f = models.FloatField()
    pres2005_f = models.FloatField()
    presoe05_f = models.FloatField()
    p_6a11_f = models.FloatField()
    p6a11_noaf = models.FloatField()
    p_60ymas_f = models.FloatField()
    p_8a14_f = models.FloatField()
    pdesocup_f = models.FloatField()
    pea_f = models.FloatField()
    pnacent_f = models.FloatField()
    pnacoe_f = models.FloatField()
    pe_inac_f = models.FloatField()
    pocupada_f = models.FloatField()
    pobmas = models.FloatField()
    p_0a2_m = models.FloatField()
    p_12a14_m = models.FloatField()
    p12a14noam = models.FloatField()
    p_12ymas_m = models.FloatField()
    p_15a17_m = models.FloatField()
    p15a17a_m = models.FloatField()
    p_15ymas_m = models.FloatField()
    p15ym_an_m = models.FloatField()
    p15pri_com = models.FloatField()
    p15pri_inm = models.FloatField()
    p15sec_com = models.FloatField()
    p15sec_inm = models.FloatField()
    p15ym_se_m = models.FloatField()
    p_18a24_m = models.FloatField()
    p18a24a_m = models.FloatField()
    p_18ymas_m = models.FloatField()
    p18ym_pb_m = models.FloatField()
    p_3a5_m = models.FloatField()
    p3a5_noa_m = models.FloatField()
    p_3ymas_m = models.FloatField()
    p3ym_hli_m = models.FloatField()
    p3hli_he_m = models.FloatField()
    p3hlinhe_m = models.FloatField()
    p_5ymas_m = models.FloatField()
    pres2005_m = models.FloatField()
    presoe05_m = models.FloatField()
    p_6a11_m = models.FloatField()
    p6a11_noam = models.FloatField()
    p_60ymas_m = models.FloatField()
    p_8a14_m = models.FloatField()
    p8a14an_m = models.FloatField()
    pdesocup_m = models.FloatField()
    pea_m = models.FloatField()
    pnacent_m = models.FloatField()
    pnacoe_m = models.FloatField()
    pe_inac_m = models.FloatField()
    pocupada_m = models.FloatField()
    pnacent = models.FloatField()
    pnacoe = models.FloatField()
    pe_inac = models.FloatField()
    pocupada = models.FloatField()
    p12ym_sepa = models.FloatField()
    psinder = models.FloatField()
    psin_lim = models.FloatField()
    psin_relig = models.FloatField()
    p12ym_solt = models.FloatField()
    pobtot = models.FloatField()
    prom_hnv = models.FloatField()
    prom_ocup = models.FloatField()
    pro_ocup_c = models.FloatField()
    pncatolica = models.FloatField()
    rel_h_m = models.FloatField()
    tothog = models.FloatField()
    vivtot = models.FloatField()
    tvivhab = models.FloatField()
    tvivpar = models.FloatField()
    tvivparhab = models.FloatField()
    vivpar_ut = models.FloatField()
    vivpar_des = models.FloatField()
    vivpar_hab = models.FloatField()
    vph_3ymasc = models.FloatField()
    vph_2cuart = models.FloatField()
    vph_2ymasd = models.FloatField()
    vph_pisodt = models.FloatField()
    vph_pisoti = models.FloatField()
    vph_1dor = models.FloatField()
    vph_1cuart = models.FloatField()
    vph_aguadv = models.FloatField()
    vph_autom = models.FloatField()
    vph_pc = models.FloatField()
    vph_drenaj = models.FloatField()
    vph_excsa = models.FloatField()
    vph_inter = models.FloatField()
    vph_lavad = models.FloatField()
    vph_telef = models.FloatField()
    vph_c_elec = models.FloatField()
    vph_c_serv = models.FloatField()
    vph_radio = models.FloatField()
    vph_refri = models.FloatField()
    vph_cel = models.FloatField()
    vph_tv = models.FloatField()
    vph_aguafv = models.FloatField()
    vph_nodren = models.FloatField()
    vph_s_elec = models.FloatField()
    vph_snbien = models.FloatField()
    geom = models.MultiPolygonField(srid=4326)

    def __str__(self):
        return 'Entidad: %s' % self.entidad