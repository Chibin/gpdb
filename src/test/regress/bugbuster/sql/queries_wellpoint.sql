CREATE TABLE adj_hcs (
       HCS_key              bigint NOT NULL ,
       adj_nbr              CHAR(4)  NOT NULL  ,
       pgbk_ind             CHAR(1)  NOT NULL  ,
       adjud_dt             DATE  NOT NULL ,
       appr_day_cnt         SMALLINT NOT NULL  ,
       appr_unit_cnt        INTEGER NOT NULL  ,
       unwrt_typ_cd         CHAR(1)  NOT NULL  ,
       ntwk_bnft_excp_cd    CHAR(1)  NOT NULL  ,
       ntwk_bnft_lvl_cd     SMALLINT  ,
       trans_typ_cd         SMALLINT NOT NULL  ,
       GL_post_dt           DATE  NOT NULL  ,
       surg_proc_cd         CHAR(8)  NOT NULL  ,
       adm_dt               DATE  NOT NULL  ,
       adm_typ_cd           CHAR(1)  NOT NULL  ,
       dischrg_dt           DATE  NOT NULL  ,
       clm_id               CHAR(15)  NOT NULL ,
       serv_line_nbr        INTEGER NOT NULL  ,
       OCL_cd               SMALLINT NOT NULL  ,
       pat_brth_dt          DATE  NOT NULL ,
       pat_age              SMALLINT NOT NULL  ,
       reimb_prov_in_ntwk_cd CHAR(1)  NOT NULL  ,
       place_serv_cd        CHAR(2)  NOT NULL  ,
       place_serv_typ_cd    CHAR(2)  NOT NULL  ,
       emer_ind             CHAR(1)  NOT NULL  ,
       auth_cd              SMALLINT NOT NULL  ,
       bill_day_cnt         SMALLINT NOT NULL  ,
       bill_unit_cnt        INTEGER NOT NULL  ,
       serv_end_dt          DATE  NOT NULL ,
       adm_diag_cd          CHAR(6)  NOT NULL  ,
       DRG_cd               SMALLINT NOT NULL  ,
       prim_diag_cd         CHAR(6)  NOT NULL  ,
       mjr_diag_ctgy_cd     SMALLINT NOT NULL  ,
       serv_diag_cd         CHAR(6)  NOT NULL  ,
       hlth_serv_cd         CHAR(8)  NOT NULL  ,
       hlth_serv_cd_typ_cd  CHAR(2)  NOT NULL  ,
       serv_mod_cd          CHAR(2)  NOT NULL  ,
       facil_prim_proc_cd   CHAR(8)  NOT NULL  ,
       bill_chrg_amt        DECIMAL(9,2) NOT NULL ,
       mkt_val_amt          DECIMAL(9,2) NOT NULL ,
       prov_val_amt         DECIMAL(9,2) NOT NULL ,
       disc_cov_amt         DECIMAL(9,2) NOT NULL ,
       undisc_cov_amt       DECIMAL(9,2) NOT NULL ,
       non_cov_bnft_reduc_amt DECIMAL(9,2) NOT NULL  ,
       coins_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       copay_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       deduc_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       max_lmt_reduc_amt    DECIMAL(9,2) NOT NULL  ,
       OCL_reduc_amt        DECIMAL(9,2) NOT NULL  ,
       oth_cov_reduc_amt    DECIMAL(9,2) NOT NULL  ,
       serv_appr_pay_amt    DECIMAL(9,2) NOT NULL  ,
       serv_pd_amt          DECIMAL(9,2) NOT NULL  ,
       misc_pay_amt         DECIMAL(9,2) NOT NULL  ,
       rate_pool_id         CHAR(3)  NOT NULL  ,
       sub_liab_basis_cd    CHAR(1)  NOT NULL  ,
       bnft_ctgy_cd         SMALLINT NOT NULL  ,
       prov_fin_agrmt_typ_cd CHAR(1)  NOT NULL  ,
       cust_fin_agrmt_typ_cd CHAR(1)  NOT NULL  ,
       reimb_prov_spcl_cd   CHAR(10)  NOT NULL  ,
       serv_prov_spcl_cd    CHAR(10)  NOT NULL  ,
       clm_expan_id         CHAR(5)  NOT NULL  DEFAULT '     '  ,
       facil_typ_cd         CHAR(2)  NOT NULL  ,
       HRA_pd_amt           DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       ASO_pd_amt           DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       fully_ins_pd_amt     DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       alt_fnd_pd_amt       DECIMAL(9,2) NOT NULL  DEFAULT 0.00  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE adj_hcs_drug (
       HCS_key              bigint NOT NULL ,
       natl_drug_cd         CHAR(11)  NOT NULL ,
       prscrb_prov_org_key  bigint,
       avg_whlsl_price_amt  DECIMAL(9,2) NOT NULL ,
       bill_ingrd_cost_amt  DECIMAL(9,2) NOT NULL ,
       allow_ingrd_cost_amt DECIMAL(9,2) NOT NULL ,
       fed_max_chrg_amt     DECIMAL(9,2) NOT NULL  ,
       brnd_pnlty_amt       DECIMAL(9,2) NOT NULL  ,
       bill_dspns_fee_amt   DECIMAL(9,2) NOT NULL  ,
       allow_dspns_fee_amt  DECIMAL(9,2) NOT NULL  ,
       bill_sale_tax_amt    DECIMAL(9,2) NOT NULL  ,
       allow_sale_tax_amt   DECIMAL(9,2) NOT NULL  ,
       cmpnd_drug_ind       CHAR(1)  NOT NULL  ,
       price_base_cd        SMALLINT NOT NULL  ,
       genrc_brnd_cd        CHAR(1)  NOT NULL  ,
       allow_drug_day_supl_cnt INTEGER NOT NULL  ,
       bill_drug_day_supl_cnt INTEGER NOT NULL  ,
       allow_qty_dspns_cnt  DECIMAL(10,3) NOT NULL  ,
       bill_qty_dspns_cnt   DECIMAL(10,3) NOT NULL  ,
       day_dose_cnt         INTEGER NOT NULL  ,
       prscrp_id            CHAR(10)  NOT NULL ,
       phar_chain_id        CHAR(10)  NOT NULL ,
       dspns_as_wrt_reas_cd CHAR(1)  NOT NULL  ,
       refl_nbr             INTEGER NOT NULL  ,
       refl_ind             CHAR(1)  NOT NULL  ,
       refl_auth_cnt        INTEGER NOT NULL  ,
       mail_order_cd        CHAR(1)  NOT NULL  ,
       frmlry_cd            CHAR(1)  NOT NULL  ,
       util_revw_ind        CHAR(1)  NOT NULL  ,
       drug_rnge_verif_cd   CHAR(1)  NOT NULL  ,
       drug_intrct_cd       CHAR(1)  NOT NULL  ,
       drug_pref_cd         CHAR(1)  NOT NULL  ,
       thrpy_prtcl_cd       CHAR(1)  NOT NULL  ,
       dup_thrpy_cd         CHAR(1)  NOT NULL  ,
       drug_src_cd          CHAR(1)  NOT NULL  DEFAULT ' '  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_II (
       HCS_key              bigint NOT NULL ,
       tech_prof_serv_cd    CHAR(1)  NOT NULL  ,
       adj_reas_cd          SMALLINT NOT NULL  ,
       manl_prcs_ind        CHAR(1)  NOT NULL  ,
       accom_ind            CHAR(1)  NOT NULL  ,
       serv_bndl_cd         SMALLINT NOT NULL  ,
       adm_reas_cd          CHAR(1)  NOT NULL  ,
       dischrg_dest_cd      CHAR(2)  NOT NULL  ,
       ITS_plan_id          CHAR(3)  NOT NULL  ,
       medcr_assgn_ind      CHAR(1)   ,
       reins_typ_cd         CHAR(1)  NOT NULL  ,
       invc_medm_cd         CHAR(1)  NOT NULL  ,
       micro_nbr            CHAR(15)  NOT NULL  ,
       prov_assgn_cntrl_id  VARCHAR(20)  NOT NULL ,
       recv_dt              DATE  NOT NULL ,
       onset_dt             DATE  NOT NULL ,
       acc_ind              CHAR(1)  NOT NULL  ,
       work_rel_ind         CHAR(1)  NOT NULL  ,
       diag_2_cd            CHAR(6)  NOT NULL  ,
       diag_3_cd            CHAR(6)  NOT NULL  ,
       diag_4_cd            CHAR(6)  NOT NULL  ,
       diag_5_cd            CHAR(6)  NOT NULL  ,
       facil_proc_2_cd      CHAR(8)  NOT NULL  ,
       facil_proc_3_cd      CHAR(8)  NOT NULL  ,
       facil_proc_4_cd      CHAR(8)  NOT NULL  ,
       facil_proc_5_cd      CHAR(8)  NOT NULL  ,
       OOA_access_fee_amt   DECIMAL(9,2) NOT NULL  ,
       OOA_access_fee_pct   DECIMAL(5,2) NOT NULL  ,
       OOA_admin_expns_amt  DECIMAL(9,2) NOT NULL  ,
       OOA_price_meth_cd    CHAR(2)  NOT NULL  ,
       outpat_surg_grp_cd   SMALLINT NOT NULL  ,
       sec_hlth_serv_cd     CHAR(8)  NOT NULL  ,
       serv_pay_expln_cd    CHAR(6)  NOT NULL  ,
       redist_amt_ind       CHAR(1)  NOT NULL  ,
       vend_carr_id         CHAR(15)  NOT NULL  ,
       vend_grp_id          CHAR(15)  NOT NULL  ,
       ITS_clm_id           CHAR(22)  NOT NULL  ,
       clm_trgr_id          CHAR(15)  NOT NULL  ,
       rate_meth_cd         SMALLINT NOT NULL  ,
       clmchk_ovrd_ind      CHAR(1)  NOT NULL  ,
       db_cr_cd             CHAR(1)  NOT NULL  ,
       old_bnft_ctgy_cd     CHAR(2)  NOT NULL  ,
       actv_plan_id         CHAR(3)  NOT NULL  ,
       serv_plan_id         CHAR(3)  NOT NULL  ,
       prcs_plan_id         CHAR(3)  NOT NULL  ,
       sec_hlth_serv_cd_typ_cd CHAR(2)  NOT NULL  ,
       surchrg_amt          DECIMAL(9,2) NOT NULL ,
       supp_amt             DECIMAL(9,2) NOT NULL ,
       Nasco_prov_agrmt_id  CHAR(2)  NOT NULL  DEFAULT '  ' ,
       rel_caus_cd          CHAR(3)  NOT NULL  ,
       HRA_GL_prod_cd       CHAR(6)  NOT NULL  DEFAULT '      '  ,
       HRA_GL_fnd_typ_cd    CHAR(5)  NOT NULL  DEFAULT '     '  ,
       HRA_GL_acct_nbr      CHAR(15)  NOT NULL  DEFAULT '               '  ,
       serv_mod_2_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       serv_mod_3_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       serv_mod_4_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       NTWK_TIER_BLNC_BILL_AMT DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       NTWK_TIER_OOP_AMT    DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       PROV_CNTRT_TIER_CD   DECIMAL(1) NOT NULL  DEFAULT 9.  ,
       CLM_PRCD_AT_TIER_CD  DECIMAL(1) NOT NULL  DEFAULT 9.  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_KEY_CLM (
       HCS_key              bigint NOT NULL ,
       clm_key              bigint NOT NULL ,
       med_encnt_key        bigint NOT NULL  ,
       macro_encnt_key      bigint NOT NULL  ,
       clm_src_sys_key      INTEGER NOT NULL  ,
       rpt_typ_serv_key     bigint NOT NULL  ,
       pd_dt                DATE  NOT NULL  ,
       serv_strt_dt         DATE  NOT NULL ,
       disb_dt              DATE  NOT NULL  ,
       inpat_ind            CHAR(1)  NOT NULL  ,
       appr_deny_cd         CHAR(1)  NOT NULL  ,
       ipp_cd               DECIMAL(1) NOT NULL  ,
       rpt_DRG_cd           SMALLINT NOT NULL  ,
       secur_cd             CHAR(2)  NOT NULL  ,
       gl_key               bigint  DEFAULT 999999999999999.  ,
       CLM_DUP_CD           CHAR(1)  NOT NULL  DEFAULT ' '  ,
       PRMPT_PAY_CALC_DT    DATE   DEFAULT DATE '1777-07-07'  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_KEY_GRP (
       HCS_key              bigint NOT NULL ,
       grp_div_key          bigint NOT NULL  ,
       pkg_nbr              CHAR(6)  NOT NULL  ,
       indiv_bus_ind        CHAR(1)  NOT NULL  ,
       natl_bus_ind         CHAR(1)  NOT NULL  ,
       rsk_carr_cd          SMALLINT NOT NULL  ,
       GL_bus_unit_cd       CHAR(5)  NOT NULL  ,
       GL_bus_div_cd        CHAR(5)  NOT NULL  ,
       Anthem_div_cd        SMALLINT NOT NULL  ,
       secur_cd             CHAR(2)  NOT NULL  )  distributed by(HCS_key );

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_KEY_MBR (
       HCS_key              bigint NOT NULL ,
       prod_cmpnt_key       bigint NOT NULL  ,
       mbr_key              bigint NOT NULL ,
       mbr_src_sys_key      INTEGER NOT NULL  ,
       sub_mbr_key          bigint NOT NULL  ,
       secur_cd             CHAR(2)  NOT NULL  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_KEY_PRV (
       HCS_key              bigint NOT NULL ,
       encnt_reimb_key      bigint NOT NULL ,
       care_mng_prov_org_key bigint NOT NULL  ,
       reimb_prov_org_key   bigint NOT NULL ,
       serv_prov_org_key    bigint NOT NULL ,
       ref_prov_org_key     bigint NOT NULL  ,
       attnd_prov_org_key   bigint NOT NULL  ,
       prov_src_sys_key     INTEGER NOT NULL  ,
       serv_prov_typ_cd     CHAR(1)  NOT NULL  ,
       secur_cd             CHAR(2)  NOT NULL  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADJ_HCS_REDUC (
       HCS_key              bigint NOT NULL ,
       reduc_amt            DECIMAL(9,2) NOT NULL ,
       reduc_typ_cd         CHAR(2)  NOT NULL  ,
       reduc_reas_cd        CHAR(3)  NOT NULL  ,
       reduc_liab_typ_cd    CHAR(1)  NOT NULL  ,
       reduc_ctgy_cd        CHAR(2)  NOT NULL  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE ADW_DT (
       prcs_dt              DATE  NOT NULL ,
       cur_open_dt          DATE  NOT NULL ,
       cur_clos_dt          DATE  NOT NULL ,
       strt_36_dt           DATE  NOT NULL ,
       strt_48_dt           DATE  NOT NULL ,
       prcs_end_mth_dt      DATE  NOT NULL )  distributed by(prcs_end_mth_dt ); -- Terradata primary key is of date type. We shouldn't distribute this way 

--------------------------------------------------------------------------------


CREATE TABLE ARO_CLMS_MPC_EXTR (
       CLM_SRC_SYS_KEY      INTEGER NOT NULL ,
       PD_FROM_DT           DATE  NOT NULL ,
       PD_THRU_DT           DATE  NOT NULL ,
       MPC_EXTR_DT          DATE  NOT NULL ,
       OPEN_DT              DATE  NOT NULL ,
       CLOS_DT              DATE  NOT NULL )  distributed by ( CLM_SRC_SYS_KEY ,MPC_EXTR_DT ,OPEN_DT );

--------------------------------------------------------------------------------


CREATE TABLE DENY_ADJ_HCS (
       HCS_key              bigint NOT NULL ,
       adj_nbr              CHAR(4)  NOT NULL  ,
       pgbk_ind             CHAR(1)  NOT NULL  ,
       adjud_dt             DATE  NOT NULL ,
       appr_day_cnt         SMALLINT NOT NULL  ,
       appr_unit_cnt        INTEGER NOT NULL  ,
       unwrt_typ_cd         CHAR(1)  NOT NULL  ,
       ntwk_bnft_excp_cd    CHAR(1)  NOT NULL  ,
       ntwk_bnft_lvl_cd     SMALLINT  ,
       trans_typ_cd         SMALLINT NOT NULL  ,
       GL_post_dt           DATE  NOT NULL ,
       surg_proc_cd         CHAR(8)  NOT NULL  ,
       adm_dt               DATE  NOT NULL ,
       adm_typ_cd           CHAR(1)  NOT NULL ,
       dischrg_dt           DATE  NOT NULL ,
       clm_id               CHAR(15)  NOT NULL ,
       serv_line_nbr        INTEGER NOT NULL  ,
       OCL_cd               SMALLINT NOT NULL  ,
       pat_brth_dt          DATE  NOT NULL ,
       pat_age              SMALLINT NOT NULL ,
       reimb_prov_in_ntwk_cd CHAR(1)  NOT NULL  ,
       place_serv_cd        CHAR(2)  NOT NULL ,
       place_serv_typ_cd    CHAR(2)  NOT NULL  ,
       emer_ind             CHAR(1)  NOT NULL  ,
       auth_cd              SMALLINT NOT NULL  ,
       bill_day_cnt         SMALLINT NOT NULL  ,
       bill_unit_cnt        INTEGER NOT NULL  ,
       serv_end_dt          DATE  NOT NULL ,
       adm_diag_cd          CHAR(6)  NOT NULL  ,
       DRG_cd               SMALLINT NOT NULL  ,
       prim_diag_cd         CHAR(6)  NOT NULL  ,
       mjr_diag_ctgy_cd     SMALLINT NOT NULL  ,
       serv_diag_cd         CHAR(6)  NOT NULL  ,
       hlth_serv_cd         CHAR(8)  NOT NULL  ,
       hlth_serv_cd_typ_cd  CHAR(2)  NOT NULL ,
       serv_mod_cd          CHAR(2)  NOT NULL  ,
       facil_prim_proc_cd   CHAR(8)  NOT NULL  ,
       bill_chrg_amt        DECIMAL(9,2) NOT NULL ,
       mkt_val_amt          DECIMAL(9,2) NOT NULL ,
       prov_val_amt         DECIMAL(9,2) NOT NULL ,
       disc_cov_amt         DECIMAL(9,2) NOT NULL ,
       undisc_cov_amt       DECIMAL(9,2) NOT NULL ,
       non_cov_bnft_reduc_amt DECIMAL(9,2) NOT NULL  ,
       coins_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       copay_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       deduc_reduc_amt      DECIMAL(9,2) NOT NULL  ,
       max_lmt_reduc_amt    DECIMAL(9,2) NOT NULL  ,
       OCL_reduc_amt        DECIMAL(9,2) NOT NULL  ,
       oth_cov_reduc_amt    DECIMAL(9,2) NOT NULL  ,
       serv_appr_pay_amt    DECIMAL(9,2) NOT NULL  ,
       serv_pd_amt          DECIMAL(9,2) NOT NULL  ,
       misc_pay_amt         DECIMAL(9,2) NOT NULL  ,
       rate_pool_id         CHAR(3)  NOT NULL  ,
       sub_liab_basis_cd    CHAR(1)  NOT NULL ,
       bnft_ctgy_cd         SMALLINT NOT NULL  ,
       prov_fin_agrmt_typ_cd CHAR(1)  NOT NULL  ,
       cust_fin_agrmt_typ_cd CHAR(1)  NOT NULL  ,
       reimb_prov_spcl_cd   CHAR(10)  NOT NULL ,
       serv_prov_spcl_cd    CHAR(10)  NOT NULL ,
       clm_expan_id         CHAR(5)  NOT NULL  DEFAULT '     '  ,
       facil_typ_cd         CHAR(2)  NOT NULL ,
       HRA_pd_amt           DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       ASO_pd_amt           DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       fully_ins_pd_amt     DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       alt_fnd_pd_amt       DECIMAL(9,2) NOT NULL  DEFAULT 0.00  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE DENY_ADJ_HCS_II (
       HCS_key              bigint NOT NULL ,
       tech_prof_serv_cd    CHAR(1)  NOT NULL  ,
       adj_reas_cd          SMALLINT NOT NULL  ,
       manl_prcs_ind        CHAR(1)  NOT NULL  ,
       accom_ind            CHAR(1)  NOT NULL  ,
       serv_bndl_cd         SMALLINT NOT NULL  ,
       adm_reas_cd          CHAR(1)  NOT NULL  ,
       dischrg_dest_cd      CHAR(2)  NOT NULL  ,
       ITS_plan_id          CHAR(3)  NOT NULL  ,
       medcr_assgn_ind      CHAR(1)   ,
       reins_typ_cd         CHAR(1)  NOT NULL  ,
       invc_medm_cd         CHAR(1)  NOT NULL  ,
       micro_nbr            CHAR(15)  NOT NULL  ,
       prov_assgn_cntrl_id  VARCHAR(20)  NOT NULL ,
       recv_dt              DATE  NOT NULL ,
       onset_dt             DATE  NOT NULL ,
       acc_ind              CHAR(1)  NOT NULL  ,
       work_rel_ind         CHAR(1)  NOT NULL  ,
       diag_2_cd            CHAR(6)  NOT NULL  ,
       diag_3_cd            CHAR(6)  NOT NULL  ,
       diag_4_cd            CHAR(6)  NOT NULL  ,
       diag_5_cd            CHAR(6)  NOT NULL  ,
       facil_proc_2_cd      CHAR(8)  NOT NULL  ,
       facil_proc_3_cd      CHAR(8)  NOT NULL  ,
       facil_proc_4_cd      CHAR(8)  NOT NULL  ,
       facil_proc_5_cd      CHAR(8)  NOT NULL  ,
       OOA_access_fee_amt   DECIMAL(9,2) NOT NULL  ,
       OOA_access_fee_pct   DECIMAL(5,2) NOT NULL  ,
       OOA_admin_expns_amt  DECIMAL(9,2) NOT NULL  ,
       OOA_price_meth_cd    CHAR(2)  NOT NULL  ,
       outpat_surg_grp_cd   SMALLINT NOT NULL  ,
       sec_hlth_serv_cd     CHAR(8)  NOT NULL  ,
       serv_pay_expln_cd    CHAR(6)  NOT NULL  ,
       redist_amt_ind       CHAR(1)  NOT NULL  ,
       vend_carr_id         CHAR(15)  NOT NULL  ,
       vend_grp_id          CHAR(15)  NOT NULL  ,
       ITS_clm_id           CHAR(22)  NOT NULL  ,
       clm_trgr_id          CHAR(15)  NOT NULL  ,
       rate_meth_cd         SMALLINT NOT NULL  ,
       clmchk_ovrd_ind      CHAR(1)  NOT NULL  ,
       db_cr_cd             CHAR(1)  NOT NULL  ,
       old_bnft_ctgy_cd     CHAR(2)  NOT NULL  ,
       actv_plan_id         CHAR(3)  NOT NULL  ,
       serv_plan_id         CHAR(3)  NOT NULL  ,
       prcs_plan_id         CHAR(3)  NOT NULL  ,
       sec_hlth_serv_cd_typ_cd CHAR(2)  NOT NULL  ,
       surchrg_amt          DECIMAL(9,2) NOT NULL ,
       supp_amt             DECIMAL(9,2) NOT NULL ,
       Nasco_prov_agrmt_id  CHAR(2)  NOT NULL  DEFAULT '  ' ,
       rel_caus_cd          CHAR(3)  NOT NULL  ,
       HRA_GL_prod_cd       CHAR(6)  NOT NULL  DEFAULT '      '  ,
       HRA_GL_fnd_typ_cd    CHAR(5)  NOT NULL  DEFAULT '     '  ,
       HRA_GL_acct_nbr      CHAR(15)  NOT NULL  DEFAULT '               '  ,
       serv_mod_2_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       serv_mod_3_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       serv_mod_4_cd        CHAR(2)  NOT NULL  DEFAULT '  '  ,
       NTWK_TIER_BLNC_BILL_AMT DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       NTWK_TIER_OOP_AMT    DECIMAL(9,2) NOT NULL  DEFAULT 0.00  ,
       PROV_CNTRT_TIER_CD   DECIMAL(1) NOT NULL  DEFAULT 9.  ,
       CLM_PRCD_AT_TIER_CD  DECIMAL(1) NOT NULL  DEFAULT 9.  )  distributed by(HCS_key);

--------------------------------------------------------------------------------


CREATE TABLE diag_cd_dom (
       diag_cd              CHAR(6)  NOT NULL ,
       diag_rollup_cd       SMALLINT NOT NULL ,
       diag_cd_desc         VARCHAR(200)  NOT NULL ,
       diag_rollup_cd_desc  VARCHAR(90)  NOT NULL )  distributed by(diag_cd);

--------------------------------------------------------------------------------


CREATE TABLE drug_dom (
       natl_drug_cd         CHAR(11)  NOT NULL ,
       DEA_cls_cd           CHAR(1)  NOT NULL ,
       drug_name            VARCHAR(50)  NOT NULL ,
       drug_use_cd          CHAR(1)  NOT NULL ,
       drug_strgth_id       CHAR(10)  NOT NULL ,
       drug_form_cd         CHAR(2)  NOT NULL ,
       FDA_rate_cd          CHAR(1)  NOT NULL ,
       drug_form_typ_cd     CHAR(1)  NOT NULL ,
       genrc_avail_cd       CHAR(1)  NOT NULL ,
       genrc_src_cd         CHAR(1)  NOT NULL ,
       unit_dose_cd         CHAR(1)  NOT NULL ,
       pkg_cd               SMALLINT NOT NULL ,
       pkg_cnt              DECIMAL(12,3) NOT NULL  ,
       admin_meth_cd        SMALLINT NOT NULL ,
       prscrp_rank_cd       SMALLINT NOT NULL ,
       thrptc_rate_cd       CHAR(2)  NOT NULL ,
       drug_cls_cd          CHAR(1)  NOT NULL ,
       mfctr_lbl_name       CHAR(15)  NOT NULL ,
       lbl_name             VARCHAR(50)  NOT NULL ,
       AHFS_cd              INTEGER NOT NULL  ,
       drug_ctgy_cd         CHAR(1)  NOT NULL ,
       std_thrptc_cls_cd    CHAR(2)  NOT NULL ,
       genrc_thrptc_cls_cd  CHAR(2)  NOT NULL ,
       spec_thrptc_cls_cd   CHAR(3)  NOT NULL )  distributed by(natl_drug_cd );

--------------------------------------------------------------------------------


CREATE TABLE DT_TBL (
       rpt_prd              CHAR(6)  NOT NULL ,
       mth_begn_dt          DATE  NOT NULL ,
       mth_end_dt           DATE  NOT NULL ,
       rpt_day_cnt          SMALLINT  NOT NULL )  distributed by(rpt_prd );

--------------------------------------------------------------------------------


CREATE TABLE FACETS_MBR_XREF (
       leg_sub_id           VARCHAR(15)  NOT NULL ,
       leg_dep_id           VARCHAR(15)  NOT NULL ,
       src_sys_key          INTEGER NOT NULL ,
       FACETS_sub_id        VARCHAR(15)  NOT NULL ,
       FACETS_dep_id        VARCHAR(15)  NOT NULL )  distributed by( leg_sub_id ,leg_dep_id ,src_sys_key  );

--------------------------------------------------------------------------------


CREATE TABLE GNDR_CD_DOM (
       gndr_cd              CHAR(1)  NOT NULL ,
       gndr_cd_desc         VARCHAR(50)  NOT NULL )  distributed by(gndr_cd );

--------------------------------------------------------------------------------


CREATE TABLE Grp_Assn (
       ASSN_ID              CHAR(9)  NOT NULL ,
       GRP_DIV_KEY          bigint NOT NULL ,
       ASSN_NAME            VARCHAR(50)  NOT NULL ,
       EFF_DT               DATE  NOT NULL ,
       CANC_DT              DATE  NOT NULL ,
       src_sys_key          INTEGER NOT NULL  ,
       open_dt              DATE  NOT NULL ,
       clos_dt              DATE  NOT NULL  )  distributed  by( ASSN_ID ,GRP_DIV_KEY  );

--------------------------------------------------------------------------------


CREATE TABLE grp_div (
       grp_div_key          bigint NOT NULL ,
       grp_addr_key         bigint NOT NULL  ,
       grp_acct_key         bigint NOT NULL  ,
       rate_size_band_cd    SMALLINT NOT NULL  ,
       grp_id               VARCHAR(15)  NOT NULL ,
       subgrp_id            VARCHAR(15)  NOT NULL ,
       natl_grp_id          CHAR(15)  NOT NULL  ,
       src_sys_key          INTEGER NOT NULL  ,
       orig_eff_dt          DATE  NOT NULL ,
       eff_dt               DATE  NOT NULL ,
       canc_dt              DATE  NOT NULL  ,
       canc_reas_cd         CHAR(2)  NOT NULL ,
       name                 VARCHAR(50)  NOT NULL ,
       FIPS_cd              CHAR(5)  NOT NULL  ,
       zip5_cd              CHAR(5)  NOT NULL  ,
       zip4_cd              CHAR(4)  NOT NULL  ,
       natl_bus_ind         CHAR(1)  NOT NULL  ,
       fed_ind              CHAR(1)  NOT NULL  ,
       emp_contrib_ind      CHAR(1)  NOT NULL  ,
       cust_acct_typ_cd     CHAR(1)  NOT NULL  ,
       admin_grp_ind        CHAR(1)  NOT NULL  ,
       admin_grp_typ_cd     SMALLINT NOT NULL  ,
       SIC_cd               CHAR(4)  NOT NULL  ,
       substd_surchrg_pct   DECIMAL(5,2) NOT NULL  ,
       price_cnty_grp_cd    CHAR(2)  NOT NULL  ,
       empr_id              CHAR(3)  NOT NULL  ,
       open_dt              DATE  NOT NULL ,
       clos_dt              DATE  NOT NULL  ,
       BOB_cd               SMALLINT NOT NULL  DEFAULT 0.  )  distributed by(grp_div_key );

--------------------------------------------------------------------------------


CREATE TABLE grp_div_curr (
       grp_div_key          bigint NOT NULL ,
       grp_addr_key         bigint NOT NULL  ,
       grp_acct_key         bigint NOT NULL  ,
       rate_size_band_cd    SMALLINT NOT NULL  ,
       grp_id               VARCHAR(15)  NOT NULL ,
       subgrp_id            VARCHAR(15)  NOT NULL ,
       natl_grp_id          CHAR(15)  NOT NULL  ,
       src_sys_key          INTEGER NOT NULL  ,
       orig_eff_dt          DATE  NOT NULL ,
       eff_dt               DATE  NOT NULL ,
       canc_dt              DATE  NOT NULL  ,
       canc_reas_cd         CHAR(2)  NOT NULL ,
       name                 VARCHAR(50)  NOT NULL ,
       FIPS_cd              CHAR(5)  NOT NULL  ,
       zip5_cd              CHAR(5)  NOT NULL  ,
       zip4_cd              CHAR(4)  NOT NULL  ,
       natl_bus_ind         CHAR(1)  NOT NULL  ,
       fed_ind              CHAR(1)  NOT NULL  ,
       emp_contrib_ind      CHAR(1)  NOT NULL  ,
       cust_acct_typ_cd     CHAR(1)  NOT NULL  ,
       admin_grp_ind        CHAR(1)  NOT NULL  ,
       admin_grp_typ_cd     SMALLINT NOT NULL  ,
       SIC_cd               CHAR(4)  NOT NULL  ,
       substd_surchrg_pct   DECIMAL(5,2) NOT NULL  ,
       price_cnty_grp_cd    CHAR(2)  NOT NULL  ,
       empr_id              CHAR(3)  NOT NULL  ,
       open_dt              DATE  NOT NULL ,
       clos_dt              DATE  NOT NULL  ,
       BOB_cd               SMALLINT NOT NULL  DEFAULT 0.  )  distributed by(grp_div_key );

--------------------------------------------------------------------------------


CREATE TABLE GRP_EARN_INC_SUM (
       GRP_DIV_KEY          bigint NOT NULL ,
       ALIAS_GRP_ACCT_KEY   CHAR(9)  ,
       ASSN_ID              CHAR(9)  ,
       BOB_CD               SMALLINT,
       DEPT_NBR             CHAR(15)  ,
       GRP_ACCT_ID          CHAR(15)  ,
       GRP_ACCT_ID_TYP_CD   SMALLINT,
       GRP_ACCT_KEY         bigint,
       GRP_ID               VARCHAR(15)  NOT NULL ,
       MBR_SRC_SYS_KEY      INTEGER NOT NULL ,
       PKG_NBR              CHAR(6)  ,
       SUBGRP_ID            VARCHAR(15)  ,
       SERV_PLAN_ID         CHAR(3)  ,
       COV_SERV_ID          VARCHAR(9)  ,
       GL_BUS_UNIT_CD       CHAR(5)  ,
       HLTH_COV_CLS_CD      CHAR(2)  ,
       HLTH_COV_TYP_ROLLUP_CD SMALLINT,
       MEDCR_REL_COV_CD     CHAR(1)  ,
       OTH_CARR_INS_CD      CHAR(1)  ,
       OTH_CARR_PRIM_IND    CHAR(1)  ,
       PROD_CD              INTEGER,
       PROD_TYP_CD          SMALLINT,
       EARN_INC_PRD         CHAR(6)  ,
       GL_POST_PRD          CHAR(6)  ,
       EARN_INC_AMT         DECIMAL(15,2)  NOT NULL ,
       PROD_STRNG_ID        CHAR(25)  ,
       EARN_INC_TYP_CD      SMALLINT,
       INC_SRC_SYS_KEY      INTEGER,
       GL_BUS_DIV_CD        CHAR(5)  )  distributed  by(GRP_DIV_KEY ,PKG_NBR ,PROD_CD ,GL_POST_PRD ,EARN_INC_AMT  );

--------------------------------------------------------------------------------


CREATE TABLE GRP_EXPOS_SUM (
       GRP_DIV_KEY          bigint NOT NULL ,
       ALIAS_GRP_ACCT_KEY   CHAR(9)  ,
       ASSN_ID              CHAR(9)  ,
       BOB_CD               SMALLINT,
       DEPT_NBR             CHAR(15)  ,
       GRP_ACCT_ID          CHAR(15)  ,
       GRP_ACCT_ID_TYP_CD   SMALLINT,
       GRP_ACCT_KEY         bigint,
       GRP_ID               VARCHAR(15)  ,
       SRC_SYS_KEY          INTEGER,
       PKG_NBR              CHAR(6)  ,
       SUBGRP_ID            VARCHAR(15)  ,
       PAR_PLAN_ID          CHAR(3)  ,
       COV_SERV_ID          VARCHAR(9)  ,
       GL_BUS_UNIT_CD       CHAR(5)  ,
       HLTH_COV_CLS_CD      CHAR(2)  ,
       HLTH_COV_TYP_ROLLUP_CD SMALLINT,
       MEDCR_REL_COV_CD     CHAR(1)  ,
       OTH_CARR_INS_CD      CHAR(1)  ,
       OTH_CARR_PRIM_IND    CHAR(1)  ,
       PROD_CD              INTEGER,
       PROD_TYP_CD          SMALLINT,
       RPT_PRD              CHAR(6)  ,
       RPT_DAY_CNT          SMALLINT,
       CUST_FIN_AGRMT_TYP_CD CHAR(1)  ,
       FND_TYP_CD           SMALLINT,
       GNDR_CD              CHAR(1)  ,
       RATE_STRUC_CD        SMALLINT,
       RATE_STRUC_TYP_CD    SMALLINT,
       REL_TYP_CD           CHAR(2)  ,
       RNW_PRD              CHAR(6)  ,
       RPT_PRD_MBR_AGE_RNG_CD SMALLINT,
       EXPOS_SUM_CNT        DECIMAL(9),
       PROD_STRNG_ID        CHAR(25)  ,
       ACCUM_EXPOS_AGE_CNT  DECIMAL(9),
       MBR_PER_CNTRT_NBR    SMALLINT,
       GL_BUS_DIV_CD        CHAR(5)  )  distributed 	by(GRP_DIV_KEY ,PKG_NBR ,PROD_CD ,RPT_PRD ,RATE_STRUC_CD ,RPT_PRD_MBR_AGE_RNG_CD ,EXPOS_SUM_CNT ,MBR_PER_CNTRT_NBR  );

--------------------------------------------------------------------------------


CREATE TABLE GRP_HCS_SUM (
       grp_div_key          bigint,
       alias_grp_acct_key   CHAR(9)  ,
       assn_id              CHAR(9)  ,
       bob_cd               SMALLINT,
       dept_nbr             CHAR(15)  ,
       grp_acct_id          CHAR(15)  ,
       grp_acct_id_typ_cd   SMALLINT,
       grp_acct_key         bigint,
       grp_id               VARCHAR(15)  ,
       mbr_src_sys_key      INTEGER,
       pkg_nbr              CHAR(6)  ,
       subgrp_id            VARCHAR(15)  ,
       serv_plan_id         CHAR(3)  ,
       clm_src_sys_key      INTEGER,
       cov_serv_id          VARCHAR(9)  ,
       gl_bus_unit_cd       CHAR(5)  ,
       hlth_cov_cls_cd      CHAR(2)  ,
       hlth_cov_typ_rollup_cd SMALLINT,
       medcr_rel_cov_cd     CHAR(1)  ,
       oth_carr_prim_ind    CHAR(1)  ,
       prod_cd              INTEGER,
       prod_typ_cd          SMALLINT,
       serv_strt_prd        CHAR(6)  ,
       pd_prd               CHAR(6)  ,
       cust_fin_agrmt_typ_cd CHAR(1)  ,
       fnd_typ_cd           SMALLINT,
       ooa_access_fee_amt   DECIMAL(15,2),
       serv_pd_amt          DECIMAL(15,2),
       prod_strng_id        CHAR(25)  ,
       oth_carr_ins_cd      CHAR(1)  ,
       surchrg_amt          DECIMAL(15,2),
       gl_bus_div_cd        CHAR(5)  )  distributed by(grp_div_key ,pkg_nbr ,pd_prd ,ooa_access_fee_amt ,serv_pd_amt );

--------------------------------------------------------------------------------


CREATE TABLE GRP_MED_UTIL_SUM (
       grp_div_key          bigint,
       alias_grp_acct_key   CHAR(9)  ,
       assn_id              CHAR(9)  ,
       bob_cd               SMALLINT,
       dept_nbr             CHAR(15)  ,
       grp_acct_id          CHAR(15)  ,
       grp_acct_id_typ_cd   SMALLINT,
       grp_acct_key         bigint,
       grp_id               VARCHAR(15)  ,
       mbr_src_sys_key      INTEGER,
       pkg_nbr              CHAR(6)  ,
       subgrp_id            VARCHAR(15)  ,
       serv_plan_id         CHAR(3)  ,
       clm_src_sys_key      INTEGER,
       cov_serv_id          VARCHAR(9)  ,
       gl_bus_unit_cd       CHAR(5)  ,
       hlth_cov_cls_cd      CHAR(2)  ,
       hlth_cov_typ_rollup_cd SMALLINT,
       medcr_rel_cov_cd     CHAR(1)  ,
       oth_carr_ins_cd      CHAR(1)  ,
       oth_carr_prim_ind    CHAR(1)  ,
       prod_cd              INTEGER,
       prod_typ_cd          SMALLINT,
       pd_prd               CHAR(6)  ,
       cust_fin_agrmt_typ_cd CHAR(1)  ,
       fnd_typ_cd           SMALLINT,
       gndr_cd              CHAR(1)  ,
       ipp_cd               DECIMAL(1),
       inpat_ind            CHAR(1)  ,
       mjr_diag_ctgy_cd     SMALLINT,
       reimb_prov_in_ntwk_cd CHAR(1)  ,
       place_serv_cd        CHAR(2)  ,
       prov_fin_agrmt_typ_cd CHAR(1)  ,
       rate_struc_typ_cd    SMALLINT,
       rel_typ_cd           CHAR(2)  ,
       rate_struc_cd        SMALLINT,
       serv_dt_mbr_age_rng_cd SMALLINT,
       rpt_typ_serv_key     bigint,
       rpt_typ_serv_rollup_cd CHAR(2)  ,
       vist_cnt             INTEGER,
       appr_day_cnt         INTEGER,
       bill_day_cnt         INTEGER,
       appr_unit_cnt        INTEGER,
       bill_unit_cnt        INTEGER,
       ooa_access_fee_amt   DECIMAL(15,2),
       serv_appr_pay_amt    DECIMAL(15,2),
       serv_pd_amt          DECIMAL(15,2),
       prod_strng_id        CHAR(25)  ,
       prim_vist_reas_cd    DECIMAL(1),
       prof_vist_ind        CHAR(1)  ,
       emer_vist_ind        CHAR(1)  ,
       urgnt_care_vist_ind  CHAR(1)  ,
       serv_line_cnt        INTEGER,
       LOS_day_cnt          INTEGER,
       facil_typ_cd         CHAR(2)  ,
       surchrg_amt          DECIMAL(15,2),
       serv_strt_prd        CHAR(6)  ,
       gl_bus_div_cd        CHAR(5)  ,
       HRA_PD_AMT           DECIMAL(15,2))  distributed by(grp_div_key ,pkg_nbr ,pd_prd ,serv_dt_mbr_age_rng_cd ,ooa_access_fee_amt ,serv_pd_amt );

--------------------------------------------------------------------------------


CREATE TABLE GRP_PHAR_UTIL_SUM (
       GRP_DIV_KEY          bigint,
       ALIAS_GRP_ACCT_KEY   CHAR(9)  ,
       ASSN_ID              CHAR(9)  ,
       BOB_CD               SMALLINT,
       DEPT_NBR             CHAR(15)  ,
       GRP_ACCT_ID          CHAR(15)  ,
       GRP_ACCT_ID_TYP_CD   SMALLINT,
       GRP_ACCT_KEY         bigint,
       GRP_ID               VARCHAR(15)  ,
       MBR_SRC_SYS_KEY      INTEGER,
       PKG_NBR              CHAR(6)  ,
       SUBGRP_ID            VARCHAR(15)  ,
       SERV_PLAN_ID         CHAR(3)  ,
       CLM_SRC_SYS_KEY      INTEGER,
       COV_SERV_ID          VARCHAR(9)  ,
       GL_BUS_UNIT_CD       CHAR(5)  ,
       HLTH_COV_CLS_CD      CHAR(2)  ,
       HLTH_COV_TYP_ROLLUP_CD SMALLINT,
       MEDCR_REL_COV_CD     CHAR(1)  ,
       OTH_CARR_INS_CD      CHAR(1)  ,
       OTH_CARR_PRIM_IND    CHAR(1)  ,
       PROD_CD              INTEGER,
       PROD_TYP_CD          SMALLINT,
       PD_PRD               CHAR(6)  ,
       DRUG_SRC_CD          CHAR(1)  ,
       DRUG_USE_CD          CHAR(1)  ,
       GNDR_CD              CHAR(1)  ,
       LBL_NAME             VARCHAR(50)  ,
       MAIL_ORDER_CD        CHAR(1)  ,
       NATL_DRUG_CD         CHAR(11)  ,
       RATE_STRUC_TYP_CD    SMALLINT,
       REL_TYP_CD           CHAR(2)  ,
       RATE_STRUC_CD        SMALLINT,
       SERV_DT_MBR_AGE_RNG_CD SMALLINT,
       PRSCRP_CNT           INTEGER,
       BILL_CHRG_AMT        DECIMAL(15,2),
       BRND_PNLTY_AMT       DECIMAL(15,2),
       COINS_REDUC_AMT      DECIMAL(15,2),
       COPAY_REDUC_AMT      DECIMAL(15,2),
       DEDUC_REDUC_AMT      DECIMAL(15,2),
       ALLOW_DSPNS_FEE_AMT  DECIMAL(15,2),
       SERV_PD_AMT          DECIMAL(15,2),
       PROD_STRNG_ID        CHAR(25)  ,
       ALLOW_INGRD_COST_AMT DECIMAL(15,2),
       ALLOW_SALE_TAX_AMT   DECIMAL(15,2),
       ALLOW_DRUG_DAY_SUPL_CNT INTEGER,
       AVG_WHLSL_PRICE_AMT  DECIMAL(15,2),
       STD_THRPTC_CLS_CD    CHAR(2)  ,
       FRMLRY_CD            CHAR(1)  ,
       SERV_STRT_PRD        CHAR(6)  ,
       GL_BUS_DIV_CD        CHAR(5)  ,
       HRA_PD_AMT           DECIMAL(15,2))  distributed by(GRP_DIV_KEY ,PKG_NBR ,PD_PRD ,SERV_DT_MBR_AGE_RNG_CD ,BILL_CHRG_AMT ,SERV_PD_AMT );

--------------------------------------------------------------------------------


CREATE TABLE GRP_REDUC_SUM (
       GRP_DIV_KEY          bigint,
       ALIAS_GRP_ACCT_KEY   CHAR(9)  ,
       ASSN_ID              CHAR(9)  ,
       BOB_CD               SMALLINT,
       DEPT_NBR             CHAR(15)  ,
       GRP_ACCT_ID          CHAR(15)  ,
       GRP_ACCT_ID_TYP_CD   SMALLINT,
       GRP_ACCT_KEY         bigint,
       GRP_ID               VARCHAR(15)  ,
       MBR_SRC_SYS_KEY      INTEGER,
       PKG_NBR              CHAR(6)  ,
       SUBGRP_ID            VARCHAR(15)  ,
       SERV_PLAN_ID         CHAR(3)  ,
       CLM_SRC_SYS_KEY      INTEGER,
       COV_SERV_ID          VARCHAR(9)  ,
       GL_BUS_UNIT_CD       CHAR(5)  ,
       HLTH_COV_CLS_CD      CHAR(2)  ,
       HLTH_COV_TYP_ROLLUP_CD SMALLINT,
       MEDCR_REL_COV_CD     CHAR(1)  ,
       OTH_CARR_INS_CD      CHAR(1)  ,
       OTH_CARR_PRIM_IND    CHAR(1)  ,
       PROD_CD              INTEGER,
       PROD_TYP_CD          SMALLINT,
       PD_PRD               CHAR(6)  ,
       IPP_CD               DECIMAL(1),
       NET_BILL_CHRG_AMT    DECIMAL(15,2),
       PROD_STRNG_ID        CHAR(25)  ,
       NET_NON_COV_REDUC_AMT DECIMAL(15,2),
       INPAT_IND            CHAR(1)  ,
       NET_OCL_REDUC_AMT    DECIMAL(15,2),
       NET_PROV_SAV_REDUC_AMT DECIMAL(15,2),
       REIMB_PROV_IN_NTWK_CD CHAR(1)  ,
       SERV_PD_AMT          DECIMAL(15,2),
       OOA_ACCESS_FEE_AMT   DECIMAL(15,2),
       NET_COINS_REDUC_AMT  DECIMAL(15,2),
       NET_COPAY_REDUC_AMT  DECIMAL(15,2),
       NET_DEDUC_REDUC_AMT  DECIMAL(15,2),
       MISC_PAY_AMT         DECIMAL(15,2),
       PROV_FIN_AGRMT_TYP_CD CHAR(1)  ,
       NET_OTH_REDUC_AMT    DECIMAL(15,2),
       SURCHRG_AMT          DECIMAL(15,2),
       SERV_STRT_PRD        CHAR(6)  ,
       GL_BUS_DIV_CD        CHAR(5)  )  distributed  by(GRP_DIV_KEY ,PKG_NBR ,PD_PRD ,NET_BILL_CHRG_AMT ,SERV_PD_AMT ,OOA_ACCESS_FEE_AMT  );

--------------------------------------------------------------------------------


CREATE TABLE grp_rsk_trans_sum (
       GRP_DIV_KEY          bigint NOT NULL ,
       ALIAS_GRP_ACCT_KEY   CHAR(9)  NOT NULL ,
       ASSN_ID              CHAR(9)  NOT NULL ,
       BOB_CD               SMALLINT NOT NULL ,
       DEPT_NBR             CHAR(15)  NOT NULL ,
       GRP_ACCT_ID          CHAR(15)  NOT NULL ,
       GRP_ACCT_ID_TYP_CD   SMALLINT NOT NULL ,
       GRP_ACCT_KEY         bigint NOT NULL ,
       GRP_ID               VARCHAR(15)  NOT NULL ,
       SRC_SYS_KEY          INTEGER NOT NULL ,
       PKG_NBR              CHAR(6)  NOT NULL ,
       SUBGRP_ID            VARCHAR(15)  NOT NULL ,
       SERV_PLAN_ID         CHAR(3)  NOT NULL ,
       COV_SERV_ID          VARCHAR(9)  NOT NULL ,
       GL_BUS_UNIT_CD       CHAR(5)  NOT NULL ,
       HLTH_COV_CLS_CD      CHAR(2)  NOT NULL ,
       HLTH_COV_TYP_ROLLUP_CD SMALLINT NOT NULL ,
       MEDCR_REL_COV_CD     CHAR(1)  NOT NULL ,
       OTH_CARR_INS_CD      CHAR(1)  NOT NULL ,
       OTH_CARR_PRIM_IND    CHAR(1)  NOT NULL ,
       PROD_CD              INTEGER NOT NULL ,
       PROD_TYP_CD          SMALLINT NOT NULL ,
       GL_POST_PRD          CHAR(6)  NOT NULL ,
       NET_PAY_AMT          DECIMAL(15,2)  NOT NULL ,
       PROD_STRNG_ID        CHAR(25)  ,
       RSK_PRD              CHAR(6)  ,
       RSK_ARRNG_METH_CD    SMALLINT)  distributed  by(GRP_DIV_KEY ,PKG_NBR ,PROD_CD ,GL_POST_PRD ,NET_PAY_AMT );

--------------------------------------------------------------------------------


CREATE TABLE HLTH_COV_CLS_CD_DOM (
       hlth_cov_cls_cd      CHAR(2)  NOT NULL ,
       hlth_cov_cls_cd_desc VARCHAR(50)  NOT NULL )  distributed by(hlth_cov_cls_cd );

--------------------------------------------------------------------------------


CREATE TABLE hlth_serv_cd_dom (
       hlth_serv_cd         CHAR(8)  NOT NULL ,
       hlth_serv_cd_typ_cd  CHAR(2)  NOT NULL ,
       hlth_serv_rollup_cd  SMALLINT NOT NULL  ,
       hlth_serv_cd_desc    VARCHAR(90)  NOT NULL ,
       hlth_serv_rollup_cd_desc VARCHAR(90)  )  distributed by(hlth_serv_cd );

--------------------------------------------------------------------------------


CREATE TABLE MBR (
       mbr_key              bigint NOT NULL ,
       mbr_addr_key         bigint NOT NULL  ,
       sub_id               VARCHAR(15)  NOT NULL ,
       dep_id               VARCHAR(15)  NOT NULL ,
       src_sys_key          INTEGER NOT NULL ,
       mbr_of_rec_ind       CHAR(1)  NOT NULL  ,
       orig_eff_dt          DATE  NOT NULL ,
       gndr_cd              CHAR(1)  NOT NULL ,
       frst_name            VARCHAR(20)  NOT NULL ,
       mid_init             CHAR(1)  NOT NULL ,
       last_name            VARCHAR(40)  NOT NULL ,
       brth_dt              DATE  NOT NULL ,
       SSN                  CHAR(9)  NOT NULL  ,
       medcr_elig_dt        DATE  NOT NULL  ,
       deceas_dt            DATE  NOT NULL  ,
       sub_mbr_key          bigint NOT NULL ,
       grp_id               VARCHAR(15)  NOT NULL ,
       HC_ID                VARCHAR(20)  NOT NULL ,
       open_dt              DATE  NOT NULL ,
       clos_dt              DATE  NOT NULL  )  distributed by(mbr_key );

--------------------------------------------------------------------------------


CREATE TABLE MBR_PROD_CMPNT (
       mbr_key              bigint NOT NULL ,
       prod_cmpnt_key       bigint NOT NULL ,
       cust_join_key        bigint NOT NULL ,
       rate_stcl_key        bigint NOT NULL  ,
       grp_id               VARCHAR(15)  NOT NULL ,
       subgrp_id            VARCHAR(15)  NOT NULL ,
       cust_acct_typ_cd     CHAR(1)  NOT NULL  ,
       pkg_nbr              CHAR(6)  NOT NULL ,
       sub_id               VARCHAR(15)  NOT NULL ,
       dep_id               VARCHAR(15)  NOT NULL ,
       src_sys_key          INTEGER NOT NULL  ,
       sub_mbr_key          bigint NOT NULL  ,
       canc_reas_cd         CHAR(2)  NOT NULL  ,
       par_plan_id          CHAR(3)  NOT NULL  ,
       cntrl_plan_id        CHAR(3)  NOT NULL  ,
       rel_cd               CHAR(2)  NOT NULL ,
       rel_typ_cd           CHAR(2)  NOT NULL  ,
       rate_struc_cd        SMALLINT NOT NULL  ,
       rate_struc_typ_cd    SMALLINT NOT NULL  ,
       oth_carr_ins_cd      CHAR(1)  NOT NULL  ,
       oth_carr_prim_ind    CHAR(1)  NOT NULL  ,
       cont_emp_bnft_ind    CHAR(1)  NOT NULL  ,
       cont_emp_bnft_typ_cd CHAR(1)  NOT NULL  ,
       cust_join_key_typ_cd CHAR(1)  NOT NULL  ,
       zip5_cd              CHAR(5)  NOT NULL ,
       zip4_cd              CHAR(4)  NOT NULL  ,
       cust_fin_agrmt_typ_cd CHAR(1)  NOT NULL  ,
       fnd_typ_cd           SMALLINT NOT NULL  ,
       rsk_carr_cd          SMALLINT NOT NULL  ,
       rsk_carr_role_cd     CHAR(1)  NOT NULL  ,
       GL_bus_unit_cd       CHAR(5)  NOT NULL  ,
       GL_bus_div_cd        CHAR(5)  NOT NULL  ,
       Anthem_div_cd        SMALLINT NOT NULL  ,
       natl_bus_ind         CHAR(1)  NOT NULL  ,
       natl_bus_typ_cd      CHAR(2)  NOT NULL  ,
       indiv_bus_ind        CHAR(1)  NOT NULL  ,
       fed_ind              CHAR(1)  NOT NULL  ,
       eff_dt               DATE  NOT NULL ,
       canc_dt              DATE  NOT NULL  ,
       open_dt              DATE  NOT NULL  ,
       clos_dt              DATE  NOT NULL  ,
       hndcp_ind            CHAR(1)  NOT NULL  ,
       stdnt_stat_cd        CHAR(1)  NOT NULL  ,
       IRS_rel_cd           SMALLINT NOT NULL  ,
       GL_mkt_bus_unit_cd   CHAR(8)  NOT NULL  DEFAULT 'ZZZZZZZZ'  ,
       GL_FND_TYP_CD        CHAR(5)  NOT NULL  DEFAULT '     ' ,
       GL_PROD_CD           CHAR(6)  NOT NULL  DEFAULT '      ' )  distributed by(mbr_key ,prod_cmpnt_key );

--------------------------------------------------------------------------------


CREATE TABLE payrl_emp (
       mbr_key              bigint NOT NULL ,
       grp_div_key          bigint NOT NULL ,
       dept_nbr             CHAR(15)  NOT NULL  ,
       payrl_loc_id         CHAR(9)  NOT NULL  ,
       emp_nbr              CHAR(15)  NOT NULL  ,
       emp_stat_cd          CHAR(2)  NOT NULL  ,
       slry_amt             DECIMAL(9,2) NOT NULL  ,
       slry_pay_prd_cd      CHAR(1)  NOT NULL  ,
       open_dt              DATE  NOT NULL ,
       clos_dt              DATE  NOT NULL  ,
       eff_dt               DATE  NOT NULL  ,
       canc_dt              DATE  NOT NULL  )  distributed by(mbr_key);

--------------------------------------------------------------------------------


CREATE TABLE PROD_CD_DOM (
       prod_cd              INTEGER  NOT NULL ,
       prod_cd_desc         VARCHAR(50)  NOT NULL )  distributed by(prod_cd );

--------------------------------------------------------------------------------


CREATE TABLE prod_cmpnt (
       PROD_CMPNT_KEY       bigint NOT NULL ,
       BNFT_RULE_KEY        bigint NOT NULL ,
       BNFT_CTGY_KEY        bigint NOT NULL ,
       SRC_SYS_KEY          INTEGER NOT NULL ,
       COV_SERV_ID          VARCHAR(9)  NOT NULL ,
       SEC_COV_ID           VARCHAR(9)  NOT NULL ,
       PROD_CD              INTEGER NOT NULL  ,
       PROD_TYP_CD          SMALLINT NOT NULL  ,
       PROD_TIER_CD         SMALLINT NOT NULL  ,
       COV_CTGY_CD          CHAR(1)  NOT NULL  ,
       HLTH_COV_TYP_CD      SMALLINT NOT NULL ,
       STPLS_TYP_CD         CHAR(1)  NOT NULL  ,
       NTWK_CD              SMALLINT NOT NULL ,
       GTKPR_IND            CHAR(1)  NOT NULL  ,
       HLTH_COV_CLS_CD      CHAR(2)  NOT NULL  ,
       ADMIN_SERV_CLS_CD    SMALLINT NOT NULL  ,
       RIDR_IND             CHAR(1)  NOT NULL  ,
       PROD_TYP_CNT         SMALLINT NOT NULL  ,
       HLTH_COV_TYP_CNT     SMALLINT NOT NULL  ,
       MEDCR_REL_COV_CD     CHAR(1)  NOT NULL  ,
       BNFT_OPT_CD          CHAR(1)  NOT NULL  ,
       HLTH_COV_PROD_CD     SMALLINT NOT NULL  DEFAULT 999.  )  distributed by(PROD_CMPNT_KEY );

--------------------------------------------------------------------------------


CREATE TABLE PROD_TYP_CD_DOM (
       prod_typ_cd          SMALLINT  NOT NULL ,
       prod_typ_cd_desc     VARCHAR(50)  NOT NULL )  distributed by(prod_typ_cd );

--------------------------------------------------------------------------------


CREATE TABLE PROV_ORG_XREF (
       prov_org_key         bigint NOT NULL ,
       src_sys_key          INTEGER NOT NULL ,
       prov_org_id          CHAR(15)  NOT NULL ,
       prov_org_id_typ_cd   CHAR(1)  NOT NULL ,
       ZIP5_CD              CHAR(5)  NOT NULL  DEFAULT '99999'  ,
       ZIP4_CD              CHAR(4)  NOT NULL  DEFAULT '    '  ,
       PROV_ORG_NAME        VARCHAR(50)  NOT NULL  DEFAULT '' ,
       PROV_TAX_ID          CHAR(9)  NOT NULL  DEFAULT '         '  ,
       NPI                  CHAR(10)  NOT NULL  DEFAULT 'ZZZZZZZZZZ'  )  distributed by(prov_org_key );

--------------------------------------------------------------------------------


CREATE TABLE RATE_STRUC_CD_DOM (
       rate_struc_cd        SMALLINT  NOT NULL ,
       rate_struc_cd_desc   VARCHAR(50)  NOT NULL )  distributed by(rate_struc_cd );

--------------------------------------------------------------------------------


CREATE TABLE RATE_STRUC_TYP_CD_DOM (
       rate_struc_typ_cd    SMALLINT  NOT NULL ,
       rate_struc_typ_cd_desc VARCHAR(50)  NOT NULL )  distributed by(rate_struc_typ_cd );

--------------------------------------------------------------------------------


CREATE TABLE rel_cd_dom (
       rel_cd               CHAR(2)  NOT NULL ,
       rel_cd_desc          VARCHAR(90)  NOT NULL )  distributed by(rel_cd );

--------------------------------------------------------------------------------


CREATE TABLE REL_TYP_CD_DOM (
       rel_typ_cd           CHAR(2)  NOT NULL ,
       rel_typ_cd_desc      VARCHAR(50)  NOT NULL )  distributed by(rel_typ_cd );

--------------------------------------------------------------------------------


CREATE TABLE RPT_TYP_SERV_KEY_DOM (
       RPT_TYP_SERV_KEY     bigint  NOT NULL ,
       RPT_TYP_SERV_KEY_DESC VARCHAR(90)  NOT NULL )  distributed by(RPT_TYP_SERV_KEY );

--------------------------------------------------------------------------------


CREATE TABLE RPT_TYP_SERV_ROLLUP_CD_DOM (
       RPT_TYP_SERV_ROLLUP_CD CHAR(2)  NOT NULL ,
       RPT_TYP_SERV_ROLLUP_CD_DESC VARCHAR(90)  NOT NULL )  distributed by(RPT_TYP_SERV_ROLLUP_CD );

--------------------------------------------------------------------------------


CREATE TABLE SEGM (
       GRP_DIV_KEY          bigint NOT NULL ,
       DEPT_NBR             CHAR(15)  ,
       PKG_NBR              CHAR(6)  ,
       PLAN_ID              CHAR(4)  ,
       GRP_ID               VARCHAR(15)  ,
       SUBGRP_ID            VARCHAR(15)  ,
       SRC_SYS_KEY          INTEGER,
       EMP_HLTH_PLAN_TYP_CD CHAR(4)  ,
       DIV_CD               CHAR(4)  ,
       PAYRL_LOC_CD         CHAR(4)  ,
       NTWK_LOC_CD          CHAR(4)  ,
       PLNT_LOC_CD          CHAR(4)  ,
       OPER_STAT_CD         CHAR(2)  ,
       TBACO_USE_CD         CHAR(1)  ,
       UNION_STAT_CD        CHAR(2)  ,
       EMP_CLS_CD           CHAR(2)  ,
       EMP_SUBCLS_CD        CHAR(2)  ,
       CSTM_SEGM_CD         CHAR(4)  ,
       EFF_DT               DATE  ,
       CANC_DT              DATE  ,
       OPEN_DT              DATE  ,
       CLOS_DT              DATE  )  distributed by( GRP_DIV_KEY ,DEPT_NBR ,PKG_NBR ,PLAN_ID );

--------------------------------------------------------------------------------


CREATE TABLE site_grp_acct (
       GRP_ACCT_KEY         bigint NOT NULL ,
       GRP_ADDR_KEY         bigint NOT NULL ,
       PARNT_ACCT_KEY       bigint NOT NULL ,
       PARNT_CO_KEY         bigint NOT NULL ,
       CUST_ACCT_TYP_CD     CHAR(1)  NOT NULL ,
       PROXY_IND            CHAR(1)  NOT NULL ,
       EMP_CNT              DECIMAL(9) NOT NULL ,
       NAME                 VARCHAR(50)  NOT NULL ,
       EFF_DT               DATE  NOT NULL ,
       CANC_DT              DATE  NOT NULL ,
       OPEN_DT              DATE  NOT NULL ,
       CLOS_DT              DATE  NOT NULL ,
       GRP_ACCT_ID          VARCHAR(15)  NOT NULL  DEFAULT ' ' ,
       GRP_ACCT_ID_TYP_CD   SMALLINT NOT NULL  DEFAULT 99. )  distributed by(GRP_ACCT_KEY );

--------------------------------------------------------------------------------


CREATE TABLE spcl_cd_dom (
       spcl_cd              CHAR(10)  NOT NULL ,
       spcl_cd_desc         CHAR(136)  NOT NULL )  distributed by(spcl_cd );

--------------------------------------------------------------------------------


CREATE TABLE SRC_SYS_XREF (
       src_sys_key          INTEGER  NOT NULL ,
       orig_whse_cd         SMALLINT  NOT NULL  DEFAULT 0. ,
       mkt_div_cd           SMALLINT  NOT NULL  DEFAULT 0. ,
       data_src_id          SMALLINT  NOT NULL  DEFAULT 0. ,
       sftwr_sys_cd         SMALLINT  NOT NULL  DEFAULT 0. ,
       src_sys_desc         VARCHAR(50)  NOT NULL ,
       mbr_avail_ind        CHAR(1)  NOT NULL ,
       clm_avail_ind        CHAR(1)  NOT NULL ,
       prov_avail_ind       CHAR(1)  NOT NULL ,
       inc_avail_ind        CHAR(1)  NOT NULL ,
       whse_intgrt_dt       DATE  NOT NULL )  distributed by(src_sys_key );

--------------------------------------------------------------------------------


CREATE TABLE STD_THRPTC_CLS_CD_DOM (
       STD_THRPTC_CLS_CD    CHAR(2)  NOT NULL ,
       STD_THRPTC_CLS_CD_DESC VARCHAR(90)  NOT NULL )  distributed by(STD_THRPTC_CLS_CD );

--------------------------------------------------------------------------------


CREATE TABLE ZIP_CD_XREF (
       zip5_cd              CHAR(5)  NOT NULL ,
       FIPS_cd              CHAR(5)  NOT NULL  DEFAULT '     ' ,
       city_name            VARCHAR(26)  NOT NULL ,
       st_cd                CHAR(2)  NOT NULL ,
       MSA_cd               INTEGER  NOT NULL  DEFAULT 0. ,
       HSA_cd               CHAR(2)  NOT NULL  DEFAULT '99' ,
       HMP_area_cd          CHAR(2)  NOT NULL  DEFAULT '  ' ,
       PPO_area_cd          CHAR(2)  NOT NULL  DEFAULT '  ' ,
       POS_area_cd          CHAR(2)  NOT NULL  DEFAULT '  ' ,
       lngtd_cd             DECIMAL(12,7) NOT NULL  DEFAULT 0.0000000 ,
       lat_cd               DECIMAL(12,7) NOT NULL  DEFAULT 0.0000000 ,
       cnty_cd              CHAR(3)  NOT NULL  DEFAULT '   ' ,
       cnty_name            VARCHAR(25)  NOT NULL ,
       phone_area_cd        CHAR(3)  NOT NULL ,
       care_mgr_cd          CHAR(3)  NOT NULL ,
       HMP_medcr_area_cd    CHAR(2)  NOT NULL ,
       Anthem_mng_WKCOMP_area_cd CHAR(2)  NOT NULL ,
       curr_zip5_cd_ind     CHAR(1)  NOT NULL )  distributed by(zip5_cd );


-- The following to GUC settingss should contribute to makeing explain  plans be identical on different database configuraitons.

set gp_segments_for_planner=4;
set gp_cost_hashjoin_chainwalk=on;


SELECT	/*qrynum:170; qryid:1180070*/ c3.groupby, c3.prod, c3.prod_typ,
		c3.segment1, c3.segment2, c3.segment3, 
		CASE
			WHEN	c3.pd_amt >= 100000.00 THEN 'PP.  100,000+ ' 
	WHEN	c3.pd_amt >= 75000.00 THEN 'P.   75,000- 99,999' 
	WHEN	c3.pd_amt >= 50000.00 THEN 'OO.   50,000- 74,999' 
	WHEN	c3.pd_amt >= 40000.00 THEN 'O.   40,000- 49,999' 
	WHEN	c3.pd_amt >= 35000.00 THEN 'NN.   30,000- 39,999' 
	WHEN	c3.pd_amt >= 30000.00 THEN 'N.   25,000- 29,999' 
	WHEN	c3.pd_amt >= 20000.00 THEN 'MM.   20,000- 24,999' 
	WHEN	c3.pd_amt >= 15000.00 THEN 'M.   15,000- 19,999' 
	WHEN	c3.pd_amt >= 10000.00 THEN 'LL.   10,000- 14,999' 
	WHEN	c3.pd_amt >= 9000.00 THEN 'L.   9,000-  9,999' 
	WHEN	c3.pd_amt >= 8000.00 THEN 'KK.   8,000-  8,999' 
	WHEN	c3.pd_amt >= 7000.00 THEN 'K.   7,000-  7,999' 
	WHEN	c3.pd_amt >= 6000.00 THEN 'JJ.   6,000-  6,999' 
	WHEN	c3.pd_amt >= 5000.00 THEN 'J.   5,000-  5,999' 
	WHEN	c3.pd_amt >= 4500.00 THEN 'II.   4,500-  4,999' 
	WHEN	c3.pd_amt >= 4000.00 THEN 'I.   4,000-  4,499' 
	WHEN	c3.pd_amt >= 3500.00 THEN 'HH.   3,500-  3,999' 
	WHEN	c3.pd_amt >= 3000.00 THEN 'H.   3,000-  3,499' 
	WHEN	c3.pd_amt >= 2500.00 THEN 'GG.   2,500-  2,999' 
	WHEN	c3.pd_amt >= 2000.00 THEN 'G.   2,000-  2,499' 
	WHEN	c3.pd_amt >= 1500.00 THEN 'FF.   1,500-  1,999' 
	WHEN	c3.pd_amt >= 1000.00 THEN 'F.   1,000-  1,499' 
	WHEN	c3.pd_amt >= 900.00 THEN 'EE.   900-  999' 
	WHEN	c3.pd_amt >= 800.00 THEN 'E.   800-  899' 
	WHEN	c3.pd_amt >= 700.00 THEN 'DD.   700-  799' 
	WHEN	c3.pd_amt >= 600.00 THEN 'D.   600-  699' 
	WHEN	c3.pd_amt >= 500.00 THEN 'CC.   500-  599' 
	WHEN	c3.pd_amt >= 400.00 THEN 'C.   400-  499' 
	WHEN	c3.pd_amt >= 300.00 THEN 'BB.   300-  399' 
	WHEN	c3.pd_amt >= 200.00 THEN 'B.   200-  299' 
	WHEN	c3.pd_amt >= 100.00 THEN 'AA.   100-  199' 
			ELSE	'A. Less than   100' 
			
		End	As Amount_ctg,
		SUM(c3.mbrcnt) As mbrcnt, 
		SUM(c3.clmcnt ) As clmcnt,
		SUM(c3.bill_chrg_amt) As bill_chrg_amt, 
		SUM(c3.o_chrg_amt) As o_chrg_amt,
		SUM(c3.pd_amt) As pd_amt, 
		SUM(C3.disc_cov_amt ) As disc_cov_amt 
FROM	(


SELECT	c22.groupby, c22. Prod, c22.prod_typ, c22.segment1, c22.segment2,
		c22.segment3, c22.sub_dep, COUNT(Distinct c22.sub_dep) As mbrcnt,
		SUM(c22.clmcnt) As clmcnt, SUM(c22.bill_chrg_amt) As bill_chrg_amt,
		SUM(c22.o_chrg_amt) As o_chrg_amt, SUM(c22.pd_amt) As pd_amt,
		SUM(C22.disc_cov_amt ) As disc_cov_amt 

FROM	(

SELECT	c2.sub_dep, c2.groupby, c2. Prod, c2.prod_typ, c2.segment1,
		c2.segment2, c2.segment3, COUNT( Distinct c2.clmid ) As clmcnt,
		SUM(c2.bill_chrg_amt) As bill_chrg_amt, SUM(c2.o_chrg_amt) As o_chrg_amt,
		SUM(c2.pd_amt) As pd_amt, SUM(C2.disc_cov_amt ) As disc_cov_amt 
FROM	(

SELECT	c.sub_dep, c.groupby , 
		Case 	When	c.prod = 'HOTT' Then 'MEDICAL'  Else	c.prod 	End	As prod, 
		Case 	When	c.prod_typ = 'HOTT' Then 'MEDICAL' 	Else	c.prod_typ 	End	As prod_typ, 
		c.segment1, c.segment2, c.segment3, c.clmid, 
		SUM(CASE 	WHEN	c.chrg_amt_y is Not Null 	AND	c.chrg_amt_n is Not Null THEN c.chrg_amt_n 
						     WHEN	c.chrg_amt_y is Null 	AND	c.chrg_amt_n is Not Null THEN c.chrg_amt_n 
							WHEN	c.chrg_amt_y is Not Null 	AND	c.chrg_amt_n is Null THEN c.chrg_amt_y 
				END	) As bill_chrg_amt, 
		SUM(c.bill_chrg_amt) As o_chrg_amt, 
		SUM(c.pd_amt) As pd_amt,
		SUM(C.disc_cov_amt ) As disc_cov_amt 
FROM	(
SELECT	a. sub_dep, a.clmkey, a.clmid, a.groupby, a.prod , a.prod_typ,
		a.segment1, a.segment2, a.segment3, SUM(a.chrg_amt_y) As chrg_amt_y,
		SUM(a.chrg_amt_n) As chrg_amt_n, SUM(a.bill_chrg_amt) As bill_chrg_amt,
		SUM(a.pd_amt) As pd_amt, SUM(a.disc_cov_amt ) As disc_cov_amt 
FROM	(
SELECT	a.*, 

SUM (1) OVER (PARTITION BY a.hcs_key 
ORDER	BY a.mbr_key, a.prod_cmpnt_key, a.cust_join_key, a.hcs_key,
		a.serv_strt_dt,a.oth_carr_ins_cd Desc, a.oth_carr_prim_ind Desc,
		a.dept_nbr Desc ROWS UNBOUNDED PRECEDING) As row_nbr 

FROM	(
SELECT	ahkm.mbr_key, ahkm.prod_cmpnt_key, ahkc.serv_strt_dt, mpc.cust_join_key,
		mpc.oth_carr_ins_cd , mpc.oth_carr_prim_ind, pe.dept_nbr, 
		CASE	WHEN	char_length(m.sub_id) > 9 THEN Substr(Trim(m.sub_id), 4,  9) 
		ELSE	m.sub_id 	END	||TRIM(m.brth_dt)||SUBSTR(m.frst_name,1,5)||TRIM(m.gndr_cd) As sub_dep,
		'All' 	AS groupby, 
		CASE 	WHEN	ahkc.clm_src_sys_key IN (161,201) THEN 
					( 	CASE	ahkm.mbr_src_sys_key 	WHEN	203 THEN 'MEDICARE PART D' 		ELSE	'DRUG' 	END	) 
					WHEN	ahkc.clm_src_sys_key IN (161,201) THEN 'DRUG' 
					WHEN	(ahkc.clm_src_sys_key = 184 	) THEN 'VISION' 
					WHEN	(ahkc.clm_src_sys_key IN (160,200) 	) THEN 'DENTAL' 
					WHEN	ahkc.clm_src_sys_key = 159 THEN 'MENTAL HEALTH' 
					WHEN	pc.hlth_cov_typ_cd IN (9,10) THEN 'HOTT' 
					WHEN	(pc.medcr_rel_cov_cd = 'S' 	OR	(pc.medcr_rel_cov_cd = 'R' 	AND	ahkc.clm_src_sys_key = 153) 
								OR	pc.hlth_cov_typ_cd IN (26,28,41)) THEN 'MEDICARE SUPP' 
					WHEN	pc.medcr_rel_cov_cd = 'R' THEN 'MEDICARE HMO' 
					ELSE	'MEDICAL' 
		END	AS prod, 
		'MEDICAL' As prod_typ, 
		'NO SEGMENT SELECTED' As segment1, 
		'NO SEGMENT SELECTED' As segment2, 
		'NO SEGMENT SELECTED' As segment3, 
		ahkc.clm_src_sys_key, ah.hcs_key, ahkg.grp_div_key,
		CASE	
			WHEN	gd.src_sys_key IN (153,154,199) THEN TRIM(ahi.actv_plan_id)|| TRIM(ah.clm_id) 
			WHEN	gd.src_sys_key IN (167,202) THEN TRIM(ahi.actv_plan_id)||substr(ah.clm_id ,1, 
						(CHAR_LENGTH(TRIM(ah.clm_id)) -2)) 
			ELSE	ah.clm_id 
		END	AS clmid, 
		TRIM(ahi.actv_plan_id)||substr(ah.clm_id,1,4)||TRIM(ah.adj_nbr)||TRIM(ah.serv_line_nbr) as clmkey, 
		CASE			
			WHEN	(ah.serv_diag_cd is NULL Or ah.serv_diag_cd Like ' %') 	And	(ah.prim_diag_cd is Null 	Or	ah.prim_diag_cd Like ' %') Then 'No DX' 
			When	(ah.serv_diag_cd is NULL Or ah.serv_diag_cd Like ' %') And	ah.prim_diag_cd is NOT Null Then ah.prim_diag_cd  
			Else	ah.serv_diag_cd 
		END	AS diag_cd, 
		CASE
			WHEN	Substr(diag_cd,1,1) = 'E' THEN 'SUMMARY CLASSIFICATION OF EXTERNAL CAUSES OF INJURY AND POISONING' 
			WHEN	Substr(diag_cd,1,1) = 'v' THEN 'SUPPLEMENTARY CLASSIFICATION OF FACTORS INFLUENCING HEALTH STATUS' 
			WHEN	diag_cd = 'DRUGO' THEN 'MAJOR MEDICAL DRUG' 
			WHEN	dcd.diag_rollup_cd_desc is Null THEN 'NO MATCHING DESCRIPTION' 
			ELSE	dcd.diag_rollup_cd_desc 
		END	As diagdsc, 
		CASE		WHEN	ahi.its_plan_id <> ' ' THEN ahi.its_plan_id 			ELSE	ahi.serv_plan_id 		END	AS serv_plan_id, 
		ahkc.pd_dt, ah.serv_pd_amt, ah.disc_cov_amt, ah.bill_chrg_amt, 
		CASE		WHEN	ahkc.inpat_ind ='Y' 	AND	ahkc.ipp_cd = 1 THEN 'Inpatient' 
						WHEN	ahkc.inpat_ind ='N' 	AND	ahkc.ipp_cd = 1 THEN 'Outpatient' 
						WHEN	ahkc.ipp_cd = 2 THEN 'Professional' 
						ELSE	'Professional' 
		END	As Cat, 
		CASE			WHEN	ah.pgbk_ind = 'Y' THEN ah.bill_chrg_amt 			ELSE	0.00 		END	As chrg_amt_y, 
		CASE			WHEN	ah.pgbk_ind = 'N' THEN ah.bill_chrg_amt 			ELSE	0.00 		END	As chrg_amt_n, 
		CASE	ahkc.clm_src_sys_key 	WHEN	153 THEN ah.serv_pd_amt + ahi.surchrg_amt	ELSE	ah.serv_pd_amt 	End	As pd_amt, 
		CASE			WHEN	ahkc.clm_src_sys_key = 159 THEN ah.serv_pd_amt 
							WHEN	ah.prov_fin_agrmt_typ_cd = 'C' THEN ah.serv_appr_pay_amt 
							WHEN	ahkc.clm_src_sys_key = 153 THEN ah.serv_pd_amt + ahi.surchrg_amt 
							ELSE	ah.serv_pd_amt 
		END	As s_pd_amt


FROM	adj_hcs	ah 
INNER JOIN adj_hcs_ii	ahi 	ON	ah.hcs_key = ahi.hcs_key 
INNER JOIN adj_hcs_key_mbr	ahkm 	ON	ah.hcs_key = ahkm.hcs_key 
INNER JOIN adj_hcs_key_grp	ahkg 	ON	ahkm.hcs_key = ahkg.hcs_key  
INNER JOIN adj_hcs_key_clm 	 ahkc 	ON	ahkc.hcs_key=ahkm.hcs_key 	
														AND	ahkc.clm_src_sys_key NOT IN (159,160,161,184,200,201) 
														AND	(ahkc.pd_dt BETWEEN '20060101' 	AND	'20061231') 
														AND	ahkc.serv_strt_dt BETWEEN '17770707' 	AND	'20991231' 
INNER JOIN 
	(
	SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key, Min(gd.eff_dt) As eff_dt, Max(gd.canc_dt) As canc_dt 
	FROM		grp_div 	 gd 	
	WHERE	 gd.grp_id In ('00009835' , '00009836') 	And	gd.src_sys_key IN (167,203)
	Group	By 1,2,3,4
	) GD 	ON	ahkg.grp_div_key = gd.grp_div_key 	
LEFT OUTER JOIN 
	(
	SELECT	mpc.mbr_key, mpc.cust_join_key, mpc.prod_cmpnt_key, mpc.clm_src_sys_key, mpc.eff_dt, mpc.canc_dt, 
					mpc.pd_from_dt, mpc.pd_thru_dt, MAX(mpc.oth_carr_ins_cd) As oth_carr_ins_cd,	MAX(mpc.oth_carr_prim_ind) As oth_carr_prim_ind 
			FROM	(
				SELECT	mpc2.mbr_key, mpc2.cust_join_key, mpc2.prod_cmpnt_key, acme.clm_src_sys_key,	mpc2.eff_dt, mpc2.canc_dt, 
								CASE		WHEN	mpc2.oth_carr_ins_cd = 'M' THEN 'M' 	ELSE	'A' 	END	As oth_carr_ins_cd, 
								mpc2.oth_carr_prim_ind, 
								CASE		WHEN	mpc2.clos_dt >= acme.mpc_extr_dt THEN To_date('01991231', 'yyyymmdd') 	
												ELSE	mpc2.clos_dt 	END	As clos_dt2, 
								acme.mpc_extr_dt, MIN(acme.pd_from_dt) As pd_from_dt,	MAX(acme.pd_thru_dt) As pd_thru_dt 
				FROM	MBR_PROD_CMPNT 	 	mpc2 
				
				INNER JOIN 
		
				(
				SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,	Min(gd.eff_dt) As eff_dt, Max(gd.canc_dt) As canc_dt 
				FROM	grp_div 	 gd 
				WHERE	gd.grp_id In ('00009835' , '00009836') 	And	gd.src_sys_key IN (167,203)
				Group	By 1,2,3,4 
				) GD 			ON	mpc2.cust_join_key = gd.grp_div_key 	AND	mpc2.canc_dt >= gd.eff_dt 	AND	mpc2.eff_dt <= gd.canc_dt 
										AND	mpc2.canc_dt >= mpc2.eff_dt AND	mpc2.canc_dt >= mpc2.eff_dt 
				
				INNER JOIN aro_clms_mpc_extr acme 	ON	mpc2.open_dt <= acme.mpc_extr_dt 
								AND	clm_src_sys_key Not In (19,154,158,159,160,161,184,188,189,194,195,196,200,201) 
								AND	clm_src_sys_key In (SELECT	DISTINCT gd.src_sys_key FROM	grp_div 	 gd 
															WHERE	gd.grp_id In ('00009835' , '00009836') 
															Group	By 1 
														    ) 
								And	acme.clos_dt = '20991231' 
				Group	By 1,2,3,4,5,6,7,8,9,10
				) mpc 
		INNER JOIN (
					SELECT	mpc3.mbr_key, mpc3.prod_cmpnt_key, mpc3.cust_join_key, mpc3.clm_src_sys_key,	mpc3.mpc_extr_dt, Max( 
						CASE	WHEN	mpc3.clos_dt >= mpc3.mpc_extr_dt THEN to_date('01991231', 'yyyymmdd') ELSE	mpc3.clos_dt 	END	) As clos_dt2 
						FROM	(
							SELECT	acme.mpc_extr_dt, acme.clm_src_sys_key, mpc2.mbr_key, mpc2.prod_cmpnt_key,	
											mpc2.cust_join_key, mpc2.clos_dt 
							FROM	MBR_PROD_CMPNT 	mpc2 
							
							INNER JOIN 
							(
								SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,	Min(gd.eff_dt) As eff_dt, Max(gd.canc_dt) As canc_dt 
								FROM	grp_div 	 gd 
								WHERE	gd.grp_id In ('00009835' , '00009836') And		gd.src_sys_key IN (167,203)
								Group	By 1,2,3,4 
							) GD 
		ON	mpc2.cust_join_key = gd.grp_div_key 
		AND	mpc2.canc_dt >= gd.eff_dt 
		AND	mpc2.eff_dt <= gd.canc_dt 
		AND	mpc2.canc_dt >= mpc2.eff_dt 
		AND	mpc2.canc_dt >= mpc2.eff_dt INNER JOIN aro_clms_mpc_extr acme 
		ON	mpc2.open_dt <= acme.mpc_extr_dt 
		AND	clm_src_sys_key Not In (19,154,158,159,160,161,184,188,189,194,195,196,200,201) 
		AND	clm_src_sys_key In 
				(SELECT	DISTINCT gd.src_sys_key FROM	grp_div 	 gd WHERE	gd.grp_id In ('00009835' , '00009836') Group	By 1) 
		And	acme.clos_dt = '20991231' ) mpc3 
GROUP	BY 1,2,3,4,5 ) mpc4 
	ON	mpc.mbr_key = mpc4.mbr_key 
	AND	mpc.prod_cmpnt_key = mpc4.prod_cmpnt_key 
	AND	mpc.cust_join_key = mpc4.cust_join_key 
	AND	mpc.clos_dt2 = mpc4.clos_dt2 
	AND	mpc.mpc_extr_dt = mpc4.mpc_extr_dt 
GROUP	BY 1,2,3,4,5,6,7,8 ) mpc 
	ON	ahkm.mbr_key = mpc.mbr_key 
	AND	ahkm.prod_cmpnt_key = mpc.prod_cmpnt_key 
	AND	ahkg.grp_div_key = mpc.cust_join_key 
	AND	ahkc.clm_src_sys_key = mpc.clm_src_sys_key 
	AND	ahkc.pd_dt BETWEEN mpc.pd_from_dt 	AND	mpc.pd_thru_dt 
	AND	ahkc.serv_strt_dt BETWEEN mpc.eff_dt 	And	mpc.canc_dt 
LEFT JOIN mbr m 	ON	ahkm.mbr_key = m.mbr_key 
LEFT JOIN prod_cmpnt	pc 	ON	ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 
LEFT JOIN prod_cd_dom	 	 pcd 	ON	pcd.prod_cd = pc.prod_cd 
LEFT JOIN prod_typ_cd_dom	 ptcd 	ON	ptcd.prod_typ_cd = pc.prod_typ_cd 
LEFT JOIN diag_cd_dom As dcd 
		ON	(
			CASE
				WHEN	(ah.serv_diag_cd is NULL  Or	ah.serv_diag_cd Like ' %') 	And	(ah.prim_diag_cd is Null Or	ah.prim_diag_cd Like ' %') Then 'No DX' 
				When	(ah.serv_diag_cd is NULL Or	ah.serv_diag_cd Like ' %') 	And	ah.prim_diag_cd is NOT Null Then ah.prim_diag_cd 
				Else	ah.serv_diag_cd 
			END	) = dcd.diag_cd 
LEFT JOIN payrl_emp pe 
	ON	ahkm.sub_mbr_key = pe.mbr_key 
	AND	gd.grp_div_key = pe.grp_div_key 
	AND	ah.adjud_dt Between pe.open_dt 	AND	pe.clos_dt 
	AND	ahkm.mbr_src_sys_key IN (153,154,158) 
	AND	pe.dept_nbr > ' ' 
	AND	ahkc.serv_strt_dt BETWEEN pe.eff_dt 	AND	pe.canc_dt 
	AND	'No Segment Selected' <> 'NO SEGMENT SELECTED' 
LEFT JOIN segm s 
	ON	gd.grp_div_key = s.grp_div_key 
	AND	ahkg.pkg_nbr=s.pkg_nbr 
	AND	s.clos_dt='20991231' 
	AND	ahkc.serv_strt_dt BETWEEN s.eff_dt 	AND	s.canc_dt 
	AND	((pe.dept_nbr =s.dept_nbr) 	OR	(pe.dept_nbr is Null 	And	s.dept_nbr is null) OR	(pe.dept_nbr is Null 	And	s.dept_nbr =' ') ) 
	AND	(
			(CASE			WHEN	ahi.its_plan_id <> ' ' THEN ahi.its_plan_id 			ELSE	ahi.serv_plan_id 		END	=s.plan_id )
			Or	(CASE		WHEN	ahi.its_plan_id <> ' ' THEN ahi.its_plan_id 	ELSE	ahi.serv_plan_id 	END	is Null 	And	s.plan_id is null) ) 
	AND	'No Segment Selected' <> 'NO SEGMENT SELECTED' ) 
	a ) a 
WHERE	row_nbr = 1 		AND	a.prod In ('HOTT' , 'MEDICAL' , 'MEDICARE CARVEOUT' , 'MEDICARE HMO' ,		'MEDICARE SUPP') 
GROUP	BY 1,2,3,4,5,6,7,8,9 ) c 
GROUP	BY 1,2,3,4,5,6,7,8 ) c2 
GROUP	BY 1,2,3,4,5,6,7 ) c22 
GROUP	BY 1,2,3,4,5,6,7 ) c3 
GROUP	BY 1,2,3,4,5,6,7 
;

-- The following to GUC settingss should contribute to makeing explain  plans be identical on different database configuraitons.

set gp_segments_for_planner=4;
set gp_cost_hashjoin_chainwalk=on;
 SELECT
	L.high_claims_amt,
	L.groupby,
	SUM(L.drug_by_mem)     AS drug_by_mem,
	SUM(L.med_by_mem)      AS med_by_mem,
	SUM(L.tot_by_mem)      AS tot_by_mem,
	SUM(L.lrg_clm_del_med) AS lrg_clm_del_med,
	SUM(L.lrg_clm_del_tot) AS lrg_clm_del_tot 
FROM
	(	SELECT
			'75000'::TEXT AS high_claims_amt,
			b.groupby,
			b.sub_dep,
			b.drug_by_mem,
			b.med_by_mem,
			b.tot_by_mem,
			CASE 
				WHEN b.tot_by_mem >= '75000' 
				THEN b.tot_by_mem - '75000' 
				ELSE 0 
			END               AS lrg_clm_del_tot,
			CASE 
				WHEN b.med_by_mem >= '75000' 
				THEN b.med_by_mem - '75000' 
				ELSE 0 
			END               AS lrg_clm_del_med 
		FROM
			(	SELECT
					bb.groupby,
					bb.sub_dep,
					SUM( 
					CASE 
	
					WHEN bb.prod = 'DRUG' 
						THEN bb.pd_by_mem 
						ELSE 0.00 
					END )    AS drug_by_mem,
					SUM( 
					CASE 
						WHEN bb.prod <> 'DRUG' 
						THEN bb.pd_by_mem 
						ELSE 0.00 
					END )    AS med_by_mem,
					SUM(bb.pd_by_mem) AS tot_by_mem 
				FROM
					(	SELECT
							a2.groupby,
							a2.prod1       AS prod,
							a2.segment1,
							a2.segment2,
							a2.segment3,
							a2.sub_dep,
							SUM(a2.pd_amt) AS pd_by_mem 
						FROM
							(	SELECT
									a.* 
								FROM
									(	SELECT
											a.*,
											SUM (1) OVER (PARTITION BY a.hcs_key 
											ORDER BY
												a.mbr_key,
												a.prod_cmpnt_key,
												a.cust_join_key,
												a.hcs_key,
												a.serv_strt_dt,
												a.oth_carr_ins_cd DESC,
												a.oth_carr_prim_ind DESC ROWS UNBOUNDED PRECEDING) AS row_nbr 
										FROM
											(	SELECT
													mpc.oth_carr_ins_cd,
													mpc.oth_carr_prim_ind,
													mpc.cust_join_key,
													CASE 
														WHEN 'Subscriber'::TEXT = 'Member'::TEXT 
														THEN ( 
														CASE 
															WHEN CHAR_LENGTH(M.sub_id) > 9 
															THEN SUBSTRING(TRIM(M.sub_id) 
															FROM
																4 FOR 9) 
															ELSE M.sub_id 
														END )|| TRIM(M.brth_dt) || substr(M.frst_name,1,5) || TRIM(M.gndr_cd) 
														ELSE ( 
														CASE 
															WHEN CHAR_LENGTH(M.sub_id) > 9 
															THEN SUBSTRING(TRIM(M.sub_id) 
															FROM
																4 FOR 9) 
															ELSE M.sub_id 
														END ) 
													END                             AS sub_dep,
													'All'::TEXT                 AS groupby,
													CASE 
														WHEN ahkc.clm_src_sys_key IN (161,
														201) 
														THEN ( 
														CASE ahkm.mbr_src_sys_key 
															WHEN 203 
															THEN 'MEDICARE PART D' 
															ELSE 'DRUG' 
														END ) 
														WHEN ahkc.clm_src_sys_key IN ( 161,
														201) 
														THEN 'DRUG' 
														WHEN (ahkc.clm_src_sys_key = 184 OR
														pc.hlth_cov_cls_cd = 'VI') 
														THEN 'VISION' 
														WHEN (ahkc.clm_src_sys_key IN (160,
														200) OR
														pc.hlth_cov_cls_cd = 'DN') 
														THEN 'DENTAL' 
														WHEN ahkc.clm_src_sys_key = 159 
														THEN 'MENTAL HEALTH' 
														WHEN pc.hlth_cov_typ_cd IN (9,
														10) 
														THEN 'HOTT' 
														WHEN (pc.medcr_rel_cov_cd = 'S' OR
														(pc.medcr_rel_cov_cd='R' AND
														ahkc.clm_src_sys_key=153) OR
														pc.hlth_cov_typ_cd IN (26,
														28,
														41)) 
														THEN 'MEDICARE SUPP' 
														WHEN pc.medcr_rel_cov_cd = 'R' 
														THEN 'MEDICARE HMO' 
														ELSE 'MEDICAL' 
													END                             AS prod1b,
													CASE 
														WHEN ahkc.clm_src_sys_key IN (161,
														201) 
														THEN ( 
														CASE ahkm.mbr_src_sys_key 
															WHEN 203 
															THEN 'MEDICARE PART D' 
															ELSE 'DRUG' 
														END ) 
														WHEN ahkc.clm_src_sys_key IN ( 161,
														201) 
														THEN 'DRUG' 
														WHEN (ahkc.clm_src_sys_key = 184 OR
														pc.hlth_cov_cls_cd = 'VI') 
														THEN 'VISION' 
														WHEN (ahkc.clm_src_sys_key IN (160,
														200) OR
														pc.hlth_cov_cls_cd = 'DN') 
														THEN 'DENTAL' 
														WHEN ahkc.clm_src_sys_key = 159 
														THEN 'MENTAL HEALTH' 
														WHEN pc.hlth_cov_typ_cd IN (9,
														10) 
														THEN 'HOTT' 
														WHEN (pc.medcr_rel_cov_cd = 'S' OR
														(pc.medcr_rel_cov_cd='R' AND
														ahkc.clm_src_sys_key=153) OR
														pc.hlth_cov_typ_cd IN (26,
														28,
														41)) 
														THEN 'MEDICARE SUPP' 
														WHEN pc.medcr_rel_cov_cd = 'R' 
														THEN 'MEDICARE HMO' 
														ELSE 'MEDICAL' 
													END                             AS prod1,
													'no prod_typ'::TEXT         AS prod2,
													'NO SEGMENT SELECTED'::TEXT AS segment1,
													'NO SEGMENT SELECTED'::TEXT AS segment2,
													'NO SEGMENT SELECTED'::TEXT AS segment3,
													ahkc.clm_src_sys_key,
													ah.hcs_key,
													ahkm.mbr_key ,
													ahkm.prod_cmpnt_key,
													ahkg.grp_div_key,
													CASE 
														WHEN ahkc. clm_src_sys_key = 126 
														THEN 'I' 
														WHEN ahkc. clm_src_sys_key = 127 AND
														pc.prod_typ_cd = 2 
														THEN 'I' 
														ELSE ah.reimb_prov_in_ntwk_cd 
													END                             AS ntwk_cd,
													CASE 
														WHEN gd.src_sys_key IN (153,
														154,
														199) 
														THEN TRIM(ahi.actv_plan_id)|| TRIM(ah.clm_id) 
														WHEN gd.src_sys_key IN (167,
														202) 
														THEN TRIM(ahi.actv_plan_id)||SUBSTRING(ah.clm_id 
														FROM
															1 FOR (CHARACTER_LENGTH(TRIM(ah.clm_id)) -2)) 
														ELSE ah.clm_id 
													END                             AS clmid,
													CASE 
														WHEN (ah.serv_diag_cd IS NULL OR
														ah.serv_diag_cd LIKE ' %') AND
														(ah.prim_diag_cd IS NULL OR
														ah.prim_diag_cd LIKE ' %') 
														THEN 'No DX' 
														WHEN (ah.serv_diag_cd IS NULL OR
														ah.serv_diag_cd LIKE ' %') AND
														ah.prim_diag_cd IS NOT NULL 
														THEN ah.prim_diag_cd 
														ELSE ah.serv_diag_cd 
													END                             AS diag_cd,
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END                             AS serv_plan_id,
													ahkc.serv_strt_dt,
													ahkc.pd_dt,
													ah.serv_pd_amt,
													ah.disc_cov_amt,
													ah.bill_chrg_amt,
													CASE 
														WHEN ahkc.ipp_cd=1 AND
														ahkc.inpat_ind='Y' 
														THEN 'INPATIENT' 
														WHEN ahkc.ipp_cd =1 AND
														ahkc.inpat_ind='N' 
														THEN 'OUTPATIENT' 
														WHEN ahkc.ipp_cd=2 
														THEN 'PROFESSIONAL' 
														WHEN ahkc.ipp_cd=3 
														THEN 'DRUG' 
														WHEN ahkc.ipp_cd IN (7,
														8,
														9) 
														THEN 'UNKNOWN' 
														ELSE 'OTHER' 
													END                             AS clm_typ,
													CASE ahkc.clm_src_sys_key 
														WHEN 153 
														THEN ah.serv_pd_amt + ahi.surchrg_amt 
														ELSE ah.serv_pd_amt 
													END                             AS pd_amt,
													CASE 
														WHEN ahkc.clm_src_sys_key = 159 
														THEN ah.serv_pd_amt 
														WHEN ah.prov_fin_agrmt_typ_cd = 'C' 
														THEN ah.serv_appr_pay_amt 
														WHEN ahkc.clm_src_sys_key = 153 
														THEN ah.serv_pd_amt + ahi.surchrg_amt 
														ELSE ah.serv_pd_amt 
													END                             AS s_pd_amt 
												FROM
													adj_hcs ah 
													INNER JOIN adj_hcs_ii ahi 
													ON ah.hcs_key = ahi.hcs_key 
													INNER JOIN adj_hcs_key_mbr ahkm 
													ON ah.hcs_key = ahkm.hcs_key 
													INNER JOIN adj_hcs_key_grp ahkg 
													ON ahkm.hcs_key = ahkg.hcs_key 
													INNER JOIN adj_hcs_key_clm ahkc 
													ON ahkc.hcs_key=ahkm.hcs_key AND
													ahkc.clm_src_sys_key NOT IN (159,
													160,
													161,
													184,
													200,
													201) AND
													substr(ahkc.pd_dt,1,6) BETWEEN '200601' AND
													'200612' 
													INNER JOIN (SELECT
																	DISTINCT gd.grp_id ,
																	gd.subgrp_id ,
																	gd.grp_div_key ,
																	gd.src_sys_key,
																	MIN(gd.eff_dt)  AS eff_dt,
																	MAX(gd.canc_dt) AS canc_dt 
																FROM
																	grp_div gd 
																WHERE
																	gd.grp_id IN ('003323990') AND
																	gd.src_sys_key IN (153,
																	154,
																	203) 
																GROUP BY
																	1,
																	2,
																	3,
																	4 
													)
													GD 
													ON ahkg.grp_div_key = gd.grp_div_key AND
													substr(ahkc.serv_strt_dt ,1,6) BETWEEN '177707' AND
													'209912' 
													LEFT JOIN (	SELECT
																	mpc.mbr_key,
																	mpc.cust_join_key,
																	mpc.prod_cmpnt_key,
																	mpc.clm_src_sys_key,
																	mpc.eff_dt,
																	mpc.canc_dt,
																	mpc.pd_from_dt,
																	mpc.pd_thru_dt,
																	MAX(mpc.oth_carr_ins_cd)   AS oth_carr_ins_cd,
																	MAX(mpc.oth_carr_prim_ind) AS oth_carr_prim_ind 
																FROM
																	(	SELECT
																			mpc2.mbr_key,
																			mpc2.cust_join_key,
																			mpc2.prod_cmpnt_key,
																			acme.clm_src_sys_key,
																			mpc2.eff_dt,
																			mpc2.canc_dt,
																			CASE 
																				WHEN mpc2.oth_carr_ins_cd = 'M' 
																				THEN 'M' 
																				ELSE 'A' 
																			END                      AS oth_carr_ins_cd,
																			mpc2.oth_carr_prim_ind,
																			CASE 
																				WHEN mpc2.clos_dt >= acme.mpc_extr_dt 
																				THEN to_date('01991231', 'yyyymmdd') 
																				ELSE mpc2.clos_dt 
																			END                      AS clos_dt2,
																			acme.mpc_extr_dt,
																			MIN(acme.pd_from_dt) AS pd_from_dt,
																			MAX(acme.pd_thru_dt) AS pd_thru_dt 
																		FROM
																			MBR_PROD_CMPNT mpc2 
																			INNER JOIN (SELECT
																							DISTINCT gd.grp_id ,
																							gd.subgrp_id ,
																							gd.grp_div_key ,
																							gd.src_sys_key,
																							MIN(gd.eff_dt)  AS eff_dt,
																							MAX(gd.canc_dt) AS canc_dt 
																						FROM
																							grp_div gd 
																						WHERE
																							gd.grp_id IN ('003323990') AND
																							gd.src_sys_key IN (153,
																							154,
																							203) 
																						GROUP BY
																							1,
																							2,
																							3,
																							4 
																			)
																			GD 
																			ON mpc2.cust_join_key = gd.grp_div_key AND
																			mpc2.canc_dt >= gd.eff_dt AND
																			mpc2.eff_dt <= gd.canc_dt AND
																			mpc2.canc_dt >= mpc2.eff_dt AND
																			mpc2.canc_dt >= mpc2.eff_dt 
																			INNER JOIN aro_clms_mpc_extr acme 
																			ON mpc2.open_dt <= acme.mpc_extr_dt AND
																			clm_src_sys_key NOT IN (19,
																			154,
																			158,
																			159,
																			160,
																			161,
																			184,
																			188,
																			189,
																			194,
																			195,
																			196,
																			200,
																			201) AND
																			clm_src_sys_key IN (SELECT
																									DISTINCT gd.src_sys_key 
																								FROM
																									grp_div gd 
																								WHERE
																									gd.grp_id IN ('003323990') 
																								GROUP BY
																									1 
																			)
																			AND
																			acme.clos_dt = '20991231' 
																			GROUP BY
																				1,
																				2,
																				3,
																				4,
																				5,
																				6,
																				7,
																				8,
																				9,
																				10 
																	)
																	mpc 
																	INNER JOIN (SELECT
																					mpc3.mbr_key,
																					mpc3.prod_cmpnt_key,
																					mpc3.cust_join_key,
																					mpc3.clm_src_sys_key,
																					mpc3.mpc_extr_dt,
																					MAX( 
																					CASE 
																						WHEN mpc3.clos_dt >= mpc3.mpc_extr_dt 
																						THEN to_date('01991231', 'yyyymmdd') 
																						ELSE mpc3.clos_dt 
																					END) AS clos_dt2 
																				FROM
																					(	SELECT
																							acme.mpc_extr_dt,
																							acme.clm_src_sys_key,
																							mpc2.mbr_key,
																							mpc2.prod_cmpnt_key,
																							mpc2.cust_join_key,
																							mpc2.clos_dt 
																						FROM
																							MBR_PROD_CMPNT mpc2 
																							INNER JOIN (SELECT
																											DISTINCT gd.grp_id ,
																											gd.subgrp_id ,
																											gd.grp_div_key ,
																											gd.src_sys_key,
																											MIN(gd.eff_dt)  AS eff_dt,
																											MAX(gd.canc_dt) AS canc_dt 
																										FROM
																											grp_div gd 
																										WHERE
																											gd.grp_id IN ('003323990') AND
																											gd.src_sys_key IN (153,
																											154,
																											203) 
																										GROUP BY
																											1,
																											2,
																											3,
																											4 
																							)
																							GD 
																							ON mpc2.cust_join_key = gd.grp_div_key AND
																							mpc2.canc_dt >= gd.eff_dt AND
																							mpc2.eff_dt <= gd.canc_dt AND
																							mpc2.canc_dt >= mpc2.eff_dt AND
																							mpc2.canc_dt >= mpc2.eff_dt 
																							INNER JOIN aro_clms_mpc_extr acme 
																							ON mpc2.open_dt <= acme.mpc_extr_dt AND
																							clm_src_sys_key NOT IN (19,
																							154,
																							158,
																							159,
																							160,
																							161,
																							184,
																							188,
																							189,
																							194,
																							195,
																							196,
																							200,
																							201) AND
																							clm_src_sys_key IN (SELECT
																													DISTINCT gd.src_sys_key 
																												FROM
																													grp_div gd 
																												WHERE
																													gd.grp_id IN ( 
																													'003323990') 
																												GROUP BY
																													1 
																							)
																							AND
																							acme.clos_dt = '20991231' 
																					)
																					mpc3 
																				GROUP BY
																					1,
																					2,
																					3,
																					4,
																					5 
																	)
																	mpc4 
																	ON mpc.mbr_key = mpc4.mbr_key AND
																	mpc.prod_cmpnt_key = mpc4.prod_cmpnt_key AND
																	mpc.cust_join_key = mpc4.cust_join_key AND
																	mpc.clos_dt2 = mpc4.clos_dt2 AND
																	mpc.mpc_extr_dt = mpc4.mpc_extr_dt 
																	GROUP BY
																		1,
																		2,
																		3,
																		4,
																		5,
																		6,
																		7,
																		8 
													)
													mpc 
													ON ahkm.mbr_key = mpc.mbr_key AND
													ahkm.prod_cmpnt_key = mpc.prod_cmpnt_key AND
													ahkg.grp_div_key = mpc.cust_join_key AND
													ahkc.clm_src_sys_key = mpc.clm_src_sys_key AND
													ahkc.pd_dt BETWEEN mpc.pd_from_dt AND
													mpc.pd_thru_dt AND
													ahkc.serv_strt_dt BETWEEN mpc.eff_dt AND
													mpc.canc_dt 
													LEFT JOIN mbr M 
													ON ahkm.mbr_key = M.mbr_key 
													LEFT JOIN prod_cmpnt pc 
													ON ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 
													LEFT JOIN payrl_emp pe 
													ON ahkm.sub_mbr_key = pe.mbr_key AND
													gd.grp_div_key = pe.grp_div_key AND
													ah.adjud_dt BETWEEN pe.open_dt AND
													pe.clos_dt AND
													ahkm.mbr_src_sys_key IN (153,
													154,
													158) AND
													pe.dept_nbr > ' ' AND
													ahkc.serv_strt_dt BETWEEN pe.eff_dt AND
													pe.canc_dt AND
													'No Segment Selected' <> 'NO SEGMENT SELECTED' 
													LEFT JOIN segm s 
													ON gd.grp_div_key = s.grp_div_key AND
													ahkg.pkg_nbr=s.pkg_nbr AND
													s.clos_dt='20991231' AND
													ahkc.serv_strt_dt BETWEEN s.eff_dt AND
													s.canc_dt AND
													((pe.dept_nbr =s.dept_nbr) OR
													(pe.dept_nbr IS NULL AND
													s.dept_nbr IS NULL) OR
													(pe.dept_nbr IS NULL AND
													s.dept_nbr =' ') ) AND
													(( 
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END =s.plan_id ) OR
													( 
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END IS NULL AND
													s.plan_id IS NULL) ) AND
													'No Segment Selected' <> 'NO SEGMENT SELECTED' 
											)
											a 
									)
									a 
								WHERE
									row_nbr = 1 AND
									a.prod1b IN ('DENTAL' ,
									'DRUG' ,
									'HOTT' ,
									'MEDICAL' ,
									'MEDICARE CARVEOUT' ,
									'MEDICARE HMO' ,
									'MEDICARE SUPP' ,
									'MENTAL HEALTH' ,
									'VISION') AND
									prod1 IN ('MEDICAL') 
							)
							a2 
						GROUP BY
							1,
							2,
							3,
							4,
							5,
							6 
						UNION
SELECT
	a2.groupby,
	a2.prod1       AS prod,
	a2.segment1,
	a2.segment2,
	a2.segment3,
	a2.sub_dep,
	SUM(a2.pd_amt) AS pd_by_mem 
FROM
	(	SELECT
			a.* 
		FROM
			(	SELECT
					a.*,
					SUM (1) OVER (PARTITION BY a.hcs_key 
					ORDER BY
						a.mbr_key,
						a.prod_cmpnt_key,
						a.grp_div_key,
						a.hcs_key,
						a.serv_strt_dt ROWS UNBOUNDED PRECEDING) AS row_nbr 
				FROM
					(	SELECT
							CASE 
								WHEN 'Subscriber' = 'Member' 
								THEN ( 
								CASE 
									WHEN CHAR_LENGTH(M.sub_id) > 9 
									THEN SUBSTRING(TRIM(M.sub_id) 
									FROM
										4 FOR 9) 
									ELSE M.sub_id 
								END )|| TRIM(M.brth_dt) || substr(M.frst_name,1,5) || TRIM(M.gndr_cd) 
								ELSE ( 
								CASE 
									WHEN CHAR_LENGTH(M.sub_id) > 9 
									THEN SUBSTRING(TRIM(M.sub_id) 
									FROM
										4 FOR 9) 
									ELSE M.sub_id 
								END ) 
							END                             AS sub_dep,
							CASE 'None' 
								WHEN 'Group' 
								THEN gd.grp_id 
								WHEN 'Group - Subgroup' 
								THEN gd.grp_id||'-'||gd.subgrp_id 
								WHEN 'Group - Package' 
								THEN gd.grp_id||'-'||ahkg.pkg_nbr 
								WHEN 'Group - Subgroup - Package' 
								THEN gd.grp_id||'-'||gd.subgrp_id||'-'||ahkg.pkg_nbr 
								ELSE 'All' 
							END                             AS groupby,
							CASE 
								WHEN ahkc.clm_src_sys_key IN (161,
								201) 
								THEN ( 
								CASE ahkm.mbr_src_sys_key 
									WHEN 203 
									THEN 'MEDICARE PART D' 
									ELSE 'DRUG' 
								END ) 
								WHEN ahkc.clm_src_sys_key IN ( 161,
								201) 
								THEN 'DRUG' 
								WHEN (ahkc.clm_src_sys_key = 184 OR
								pc.hlth_cov_cls_cd = 'VI') 
								THEN 'VISION' 
								WHEN (ahkc.clm_src_sys_key IN (160,
								200) OR
								pc.hlth_cov_cls_cd = 'DN') 
								THEN 'DENTAL' 
								WHEN ahkc.clm_src_sys_key = 159 
								THEN 'MENTAL HEALTH' 
								WHEN pc.hlth_cov_typ_cd IN (9,
								10) 
								THEN 'HOTT' 
								WHEN (pc.medcr_rel_cov_cd = 'S' OR
								(pc.medcr_rel_cov_cd='R' AND
								ahkc.clm_src_sys_key=153) OR
								pc.hlth_cov_typ_cd IN (26,
								28,
								41)) 
								THEN 'MEDICARE SUPP' 
								WHEN pc.medcr_rel_cov_cd = 'R' 
								THEN 'MEDICARE HMO' 
								ELSE 'MEDICAL' 
							END                             AS prod1b,
							CASE 
								WHEN ( 
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='HOTT' 
								THEN 'MEDICAL' 
								WHEN ( 
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE SUPP' 
								THEN 'MEDICAL' 
								WHEN ( 
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE HMO' 
								THEN 'MEDICAL' 
								WHEN ( 
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE PART D' 
								THEN 'MEDICAL' 
								ELSE ( 
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)
							END                             AS prod1,
							'no prod_typ'::TEXT         AS prod2,
							'NO SEGMENT SELECTED'::TEXT AS segment1,
							'NO SEGMENT SELECTED'::TEXT AS segment2,
							'NO SEGMENT SELECTED'::TEXT AS segment3,
							ahkc.clm_src_sys_key,
							ah.hcs_key,
							ahkm.mbr_key ,
							ahkm.prod_cmpnt_key,
							ahkg.grp_div_key,
							CASE 
								WHEN ahkc. clm_src_sys_key = 126 
								THEN 'I' 
								WHEN ahkc. clm_src_sys_key = 127 AND
								pc.prod_typ_cd = 2 
								THEN 'I' 
								ELSE ah.reimb_prov_in_ntwk_cd 
							END                             AS ntwk_cd,
							CASE 
								WHEN gd.src_sys_key IN (153,
								154,
								199) 
								THEN TRIM(ahi.actv_plan_id)|| TRIM(ah.clm_id) 
								WHEN gd.src_sys_key IN (167,
								202) 
								THEN TRIM(ahi.actv_plan_id)||SUBSTRING(ah.clm_id 
								FROM
									1 FOR (CHAR_LENGTH(TRIM(ah.clm_id)) -2)) 
								ELSE ah.clm_id 
							END                             AS clmid,
							CASE 
								WHEN (ah.serv_diag_cd IS NULL OR
								ah.serv_diag_cd LIKE ' %') AND
								(ah.prim_diag_cd IS NULL OR
								ah.prim_diag_cd LIKE ' %') 
								THEN 'No DX' 
								WHEN (ah.serv_diag_cd IS NULL OR
								ah.serv_diag_cd LIKE ' %') AND
								ah.prim_diag_cd IS NOT NULL 
								THEN ah.prim_diag_cd 
								ELSE ah.serv_diag_cd 
							END                             AS diag_cd,
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END                             AS serv_plan_id,
							ahkc.serv_strt_dt,
							ahkc.pd_dt,
							ah.serv_pd_amt,
							ah.disc_cov_amt,
							ah.bill_chrg_amt,
							CASE 
								WHEN ahkc.ipp_cd=1 AND
								ahkc.inpat_ind='Y' 
								THEN 'INPATIENT' 
								WHEN ahkc.ipp_cd =1 AND
								ahkc.inpat_ind='N' 
								THEN 'OUTPATIENT' 
								WHEN ahkc.ipp_cd=2 
								THEN 'PROFESSIONAL' 
								WHEN ahkc.ipp_cd=3 
								THEN 'DRUG' 
								WHEN ahkc.ipp_cd IN (7,
								8,
								9) 
								THEN 'UNKNOWN' 
								ELSE 'OTHER' 
							END                             AS clm_typ,
							CASE ahkc.clm_src_sys_key 
								WHEN 153 
								THEN ah.serv_pd_amt + ahi.surchrg_amt 
								ELSE ah.serv_pd_amt 
							END                             AS pd_amt,
							CASE 
								WHEN ahkc.clm_src_sys_key = 159 
								THEN ah.serv_pd_amt 
								WHEN ah.prov_fin_agrmt_typ_cd = 'C' 
								THEN ah.serv_appr_pay_amt 
								WHEN ahkc.clm_src_sys_key = 153 
								THEN ah.serv_pd_amt + ahi.surchrg_amt 
								ELSE ah.serv_pd_amt 
							END                             AS s_pd_amt 
						FROM
							adj_hcs ah 
							INNER JOIN adj_hcs_ii ahi 
							ON ah.hcs_key = ahi.hcs_key 
							INNER JOIN adj_hcs_key_mbr ahkm 
							ON ah.hcs_key = ahkm.hcs_key 
							INNER JOIN adj_hcs_key_grp ahkg 
							ON ahkm.hcs_key = ahkg.hcs_key 
							INNER JOIN adj_hcs_key_clm ahkc 
							ON ahkc.hcs_key=ahkm.hcs_key AND
							ahkc.clm_src_sys_key IN (161,
							201) AND
							substr(ahkc.pd_dt,1,6) BETWEEN '200601' AND
							'200612' 
							INNER JOIN (SELECT
											DISTINCT gd.grp_id ,
											gd.subgrp_id ,
											gd.grp_div_key ,
											gd.src_sys_key,
											MIN(gd.eff_dt)  AS eff_dt,
											MAX(gd.canc_dt) AS canc_dt 
										FROM
											grp_div gd 
										WHERE
											gd.grp_id IN ('003323990') AND
											gd.src_sys_key IN (153,
											154,
											203) 
										GROUP BY
											1,
											2,
											3,
											4 
							)
							GD 
							ON ahkg.grp_div_key = gd.grp_div_key AND
							substr(ahkc.serv_strt_dt ,1,6) BETWEEN '177707' AND
							'209912' 
							LEFT JOIN mbr M 
							ON ahkm.mbr_key = M.mbr_key 
							INNER JOIN prod_cmpnt pc 
							ON ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 
							LEFT JOIN payrl_emp pe 
							ON ahkm.sub_mbr_key = pe.mbr_key AND
							gd.grp_div_key = pe.grp_div_key AND
							ah.adjud_dt BETWEEN pe.open_dt AND
							pe.clos_dt AND
							ahkm.mbr_src_sys_key IN (153,
							154,
							158) AND
							pe.dept_nbr > ' ' AND
							ahkc.serv_strt_dt BETWEEN pe.eff_dt AND
							pe.canc_dt AND
							'No Segment Selected' <> 'NO SEGMENT SELECTED' 
							LEFT JOIN segm s 
							ON gd.grp_div_key = s.grp_div_key AND
							ahkg.pkg_nbr=s.pkg_nbr AND
							s.clos_dt='20991231' AND
							ahkc.serv_strt_dt BETWEEN s.eff_dt AND
							s.canc_dt AND
							((pe.dept_nbr =s.dept_nbr) OR
							(pe.dept_nbr IS NULL AND
							s.dept_nbr IS NULL) OR
							(pe.dept_nbr IS NULL AND
							s.dept_nbr =' ') ) AND
							(( 
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END =s.plan_id ) OR
							( 
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END IS NULL AND
							s.plan_id IS NULL) ) AND
							'No Segment Selected' <> 'NO SEGMENT SELECTED' 
					)
					a 
			)
			a 
		WHERE
			a.row_nbr = 1 AND
			a.prod1b IN ('DENTAL' ,
			'DRUG' ,
			'HOTT' ,
			'MEDICAL' ,
			'MEDICARE CARVEOUT' ,
			'MEDICARE HMO' ,
			'MEDICARE SUPP' ,
			'MENTAL HEALTH' ,
			'VISION') AND
			a.prod1 IN ('DRUG') 
	)
	a2 
GROUP BY
	1,
	2,
	3,
	4,
	5,
	6 				
					)
					bb 
				GROUP BY
					1,
					2 
			)
			b 
	)
	L 
GROUP BY
	1,
	2 ;
-- The following to GUC settingss should contribute to makeing explain  plans be identical on different database configuraitons.
set gp_segments_for_planner=4;
set gp_cost_hashjoin_chainwalk=on;

SELECT	/*qrynum:81; qryid:1039801*/ a4.prod, a4.prod_typ, a4.groupby,

		--a4.hlth_serv_cd_desc, 
		--a4.pat_cnt_pri, 
		--a4.pd_amt_pri, a4.s_pd_amt_pri,

		--a4.cov_amt_pri, a4.copay_amt_pri, a4.coins_amt_pri, a4.deduc_amt_pri,

		--a4.clm_cnt_pri, a4.pd_amt_inp_pri, a4.s_pd_amt_inp_pri, a4.pd_amt_outp_pri,

		--a4.s_pd_amt_outp_pri, a4.pd_amt_prof_pri, a4.s_pd_amt_prof_pri,
		1
		--RANK() OVER (order by a4.s_pd_amt_pri) as rank_nbr
		--RANK(a4.s_pd_amt_pri) as rank_nbr 

FROM	(

SELECT	a3.prod, a3.prod_typ, a3.groupby, a3.hlth_serv_cd_desc,

		SUM( a3.pat_cnt) as pat_cnt_pri, SUM(a3.pd_amt) as pd_amt_pri,

		SUM(a3.s_pd_amt) as s_pd_amt_pri, sum(a3.cov_amt) as cov_amt_pri,

		sum(a3.copay_amt) as copay_amt_pri, sum(a3.coins_amt) as coins_amt_pri,

		sum(a3.deduc_amt) as deduc_amt_pri, sum(a3.clm_cnt) as clm_cnt_pri,

		SUM(a3.pd_amt_inp) as pd_amt_inp_pri, SUM(a3.s_pd_amt_inp) as s_pd_amt_inp_pri,

		SUM(a3.pd_amt_outp) as pd_amt_outp_pri, SUM(a3.s_pd_amt_outp) as s_pd_amt_outp_pri,

		SUM(a3.pd_amt_prof) as pd_amt_prof_pri, SUM(a3.s_pd_amt_prof) as s_pd_amt_prof_pri 

FROM	(

SELECT	a2.prod , a2.prod_typ, a2.groupby, a2.hlth_serv_cd_desc,

		a2.sub_dep as sub_dep2 , COUNT(distinct a2.sub_dep) as pat_cnt,

		SUM(a2.pd_amt) as pd_amt, SUM(a2.s_pd_amt) as s_pd_amt, sum(a2.cov_amt) as cov_amt,

		sum(a2.copay_amt) as copay_amt, sum(a2.coins_amt) as coins_amt,

		sum(a2.deduc_amt) as deduc_amt, sum(a2.clm_cnt) as clm_cnt, SUM(a2.pd_amt_inp) as pd_amt_inp,

		SUM(a2.s_pd_amt_inp) as s_pd_amt_inp, SUM(a2.pd_amt_outp) as pd_amt_outp,

		SUM(a2.s_pd_amt_outp) as s_pd_amt_outp, SUM(a2.pd_amt_prof) as pd_amt_prof,

		SUM(a2.s_pd_amt_prof) as s_pd_amt_prof 

FROM	(

SELECT	CASE 

	WHEN	a.prod = 'HOTT' THEN 'MEDICAL' 

ELSE	a.prod 

END	as prod, 

CASE	WHEN a.prod_typ = 'HOTT' THEN 'MEDICAL' 

ELSE	a.prod_typ 

END	as prod_typ, a.groupby, a.hlth_serv_cd_desc, a.sub_dep, SUM(a.pd_amt) as pd_amt,

		SUM(a.s_pd_amt) as s_pd_amt, sum(a.disc_cov_amt) as cov_amt,

		sum(a.copay_reduc_amt) as copay_amt, sum(a.coins_reduc_amt) as coins_amt,

		sum(a.deduc_reduc_amt) as deduc_amt, count(distinct clmid) as clm_cnt,

		SUM(CASE	WHEN a.cat = 'Inpatient' THEN a.pd_amt ELSE	0.00 END	) as pd_amt_inp, SUM(

CASE	WHEN a.cat = 'Outpatient' THEN a.pd_amt ELSE	0.00 END	) as pd_amt_outp, SUM(

CASE	WHEN a.cat = 'Professional' THEN a.pd_amt ELSE	0.00 END	) as pd_amt_prof, SUM(

CASE	WHEN a.cat = 'Inpatient' THEN a.s_pd_amt ELSE	0.00 END	) as s_pd_amt_inp, SUM(

CASE	WHEN a.cat = 'Outpatient' THEN a.s_pd_amt ELSE	0.00 END	) as s_pd_amt_outp, SUM(

CASE	WHEN a.cat = 'Professional' THEN a.s_pd_amt ELSE	0.00 END	) as s_pd_amt_prof 

FROM	(

SELECT	CASE 

	WHEN	char_length(m.sub_id) > 9 THEN substring(trim(m.sub_id) FROM	4 FOR 9) ELSE	m.sub_id 

END	|| trim(m.brth_dt) || substr(m.frst_name,1,5) || trim(m.gndr_cd) AS sub_dep ,

'All' 	AS groupby, 

CASE	WHEN ahkc.clm_src_sys_key IN (161,201) THEN (

CASE	ahkm.mbr_src_sys_key 

	WHEN	203 THEN 'MEDICARE PART D' 

ELSE	'DRUG' 

END	) 

	WHEN	ahkc.clm_src_sys_key IN (161,201) THEN 'DRUG' 

	WHEN	(ahkc.clm_src_sys_key = 184 

	OR	pc.hlth_cov_cls_cd = 'VI') THEN 'VISION' 

	WHEN	(ahkc.clm_src_sys_key IN (160,200) 

	OR	pc.hlth_cov_cls_cd = 'DN') THEN 'DENTAL' 

	WHEN	ahkc.clm_src_sys_key = 159 THEN 'MENTAL HEALTH' 

	WHEN	pc.hlth_cov_typ_cd IN (9,10) THEN 'HOTT' 

	WHEN	(pc.medcr_rel_cov_cd = 'S' 

	OR	(pc.medcr_rel_cov_cd = 'R' 

	AND	ahkc.clm_src_sys_key = 153) 

	OR	pc.hlth_cov_typ_cd IN (26,28,41)) THEN 'MEDICARE SUPP' 

	WHEN	pc.medcr_rel_cov_cd = 'R' THEN 'MEDICARE HMO' 

	WHEN	'No'='Yes' 

	AND	mpc.oth_carr_ins_cd='M' 

	AND	mpc.oth_carr_prim_ind = 'Y' THEN 'MEDICARE CARVEOUT' 

ELSE	'MEDICAL' 

END	AS prod, 

CASE	WHEN ahkc.clm_src_sys_key IN (161,201) THEN (

CASE	ahkm.mbr_src_sys_key 

	WHEN	203 THEN 'MEDICARE PART D' 

ELSE	'DRUG' 

END	) 

	WHEN	ahkc.clm_src_sys_key IN (161,201) THEN 'DRUG' 

	WHEN	(ahkc.clm_src_sys_key = 184 

	OR	pc.hlth_cov_cls_cd = 'VI') THEN 'VISION' 

	WHEN	(ahkc.clm_src_sys_key IN (160,200) 

	OR	pc.hlth_cov_cls_cd = 'DN') THEN 'DENTAL' 

	WHEN	ahkc.clm_src_sys_key = 159 THEN 'MENTAL HEALTH' 

	WHEN	pc.hlth_cov_typ_cd IN (9,10) THEN 'HOTT' 

	WHEN	(pc.medcr_rel_cov_cd = 'S' 

	OR	(pc.medcr_rel_cov_cd = 'R' 

	AND	ahkc.clm_src_sys_key = 153) 

	OR	pc.hlth_cov_typ_cd IN (26,28,41)) THEN 'MEDICARE SUPP' 

	WHEN	pc.medcr_rel_cov_cd = 'R' THEN 'MEDICARE HMO' 

	WHEN	'No'='Yes' 

	AND	mpc.oth_carr_ins_cd='M' 

	AND	mpc.oth_carr_prim_ind = 'Y' THEN 'MEDICARE CARVEOUT' 

ELSE	'MEDICAL' 

END 	as prod_typ, 

CASE	WHEN ('No Segment Selected' )='Custom Segment' then s.CSTM_SEGM_CD 

	when	'No Segment Selected'='Division' then s.DIV_CD 

	when	'No Segment Selected'='Employee Class' then s.EMP_CLS_CD 

	when	'No Segment Selected'='Employer Health Plan Type' then s.EMP_HLTH_PLAN_TYP_CD 

	when	'No Segment Selected'='Employee Sub-Class' then s.EMP_SUBCLS_CD 

	when	'No Segment Selected'='Network Location' then s.NTWK_LOC_CD 

	when	'No Segment Selected'='Operation Status' then s.OPER_STAT_CD 

	when	'No Segment Selected'='Payroll Location' then s.PAYRL_LOC_CD 

	when	'No Segment Selected'='Plant Location' then s.PLNT_LOC_CD 

	when	'No Segment Selected'='Tobacco Use' then s.TBACO_USE_CD 

	when	'No Segment Selected'='Union Status' then s.UNION_STAT_CD 

else	'NO SEGMENT SELECTED' 

end	as segment1, 

CASE	WHEN ('No Segment Selected')='Custom Segment' then s.CSTM_SEGM_CD 

	when	'No Segment Selected'='Division' then s.DIV_CD 

	when	'No Segment Selected'='Employee Class' then s.EMP_CLS_CD 

	when	'No Segment Selected'='Employer Health Plan Type' then s.EMP_HLTH_PLAN_TYP_CD 

	when	'No Segment Selected'='Employee Sub-Class' then s.EMP_SUBCLS_CD 

	when	'No Segment Selected'='Network Location' then s.NTWK_LOC_CD 

	when	'No Segment Selected'='Operation Status' then s.OPER_STAT_CD 

	when	'No Segment Selected'='Payroll Location' then s.PAYRL_LOC_CD 

	when	'No Segment Selected'='Plant Location' then s.PLNT_LOC_CD 

	when	'No Segment Selected'='Tobacco Use' then s.TBACO_USE_CD 

	when	'No Segment Selected'='Union Status' then s.UNION_STAT_CD 

else	'NO SEGMENT SELECTED' 

end	as segment2, 

CASE	WHEN ( 'No Segment Selected' )='Custom Segment' then s.CSTM_SEGM_CD 

	when	'No Segment Selected'='Division' then s.DIV_CD 

	when	'No Segment Selected'='Employee Class' then s.EMP_CLS_CD 

	when	'No Segment Selected'= 'Employer Health Plan Type' then s.EMP_HLTH_PLAN_TYP_CD 

	when	'No Segment Selected'='Employee Sub-Class' then s.EMP_SUBCLS_CD 

	when	'No Segment Selected'='Network Location' then s.NTWK_LOC_CD 

	when	'No Segment Selected'='Operation Status' then s.OPER_STAT_CD 

	when	'No Segment Selected'='Payroll Location' then s.PAYRL_LOC_CD 

	when	'No Segment Selected'='Plant Location' then s.PLNT_LOC_CD 

	when	'No Segment Selected'='Tobacco Use' then s.TBACO_USE_CD 

	when	'No Segment Selected'='Union Status' then s.UNION_STAT_CD 

else	'NO SEGMENT SELECTED' 

end	as segment3, ahkc.clm_src_sys_key, ah.hcs_key, ahkm.mbr_key ,

		ahkm.prod_cmpnt_key, ahkg.grp_div_key, 

CASE	WHEN gd.src_sys_key in (153,154) THEN trim(ahi.actv_plan_id)|| trim(ah.clm_id)||trim(ah.adj_nbr)||substring(cast((ah.serv_line_nbr ) as char (4)) 

FROM	1 FOR 3) 

	WHEN	gd.src_sys_key in (132) then trim(ahi.actv_plan_id)|| substring(ah.clm_id 

FROM	1 FOR ( char_length(trim(ah.clm_id)) -1))||trim(ah.adj_nbr)||trim(ah.serv_line_nbr) 

	WHEN	gd.src_sys_key in (119,120,130,167,150) 

	and	ahkc.clm_src_sys_key not in (126) then trim(ahi.actv_plan_id)||substring(ah.clm_id 

FROM	1 FOR (char_length(trim(ah.clm_id)) -2))||trim(ah.adj_nbr)||trim(ah.serv_line_nbr) 

	WHEN	gd.src_sys_key in (119,120,130,167,150) 

	and	ahkc.clm_src_sys_key in (126) then trim(ahi.actv_plan_id)||substring(ah.clm_id 

FROM	1 FOR (char_length(trim(ah.clm_id)) -0))||trim(ah.adj_nbr)||trim(ah.serv_line_nbr) 

else	ah.clm_id 

END	AS clmkey, 

CASE	WHEN gd.src_sys_key in (153,154) then trim(ahi.actv_plan_id)|| trim(ah.clm_id) 

	when	gd.src_sys_key in (132) then trim(ahi.actv_plan_id)||substring(ah.clm_id 

FROM	1 FOR ( char_length(trim(ah.clm_id)) -1)) 

	WHEN	gd.src_sys_key in (119,120,130,150,167) 

	and	ahkc.clm_src_sys_key <> 126 then trim(ahi.actv_plan_id)||substring(ah.clm_id 

FROM	1 FOR (char_length(trim(ah.clm_id)) -2)) 

	WHEN	gd.src_sys_key in (119,120,130,150,167) 

	and	ahkc.clm_src_sys_key in (126) then trim(ahi.actv_plan_id)||substring(ah.clm_id 

FROM	1 FOR (char_length(trim(ah.clm_id)) -0)) 

ELSE	ah.clm_id 

END	AS clmid, hscd.hlth_serv_cd_desc, 

CASE	WHEN ahi.its_plan_id <> ' ' THEN ahi.its_plan_id 

ELSE	ahi.serv_plan_id 

END	AS serv_plan_id, ahkc.serv_strt_dt, ahkc.pd_dt, ah.serv_pd_amt,

		ah.disc_cov_amt, ah.bill_chrg_amt, ah.copay_reduc_amt, ah.coins_reduc_amt,

		ah.deduc_reduc_amt, 

CASE	WHEN ahkc.inpat_ind ='Y' 

	AND	ahkc.ipp_cd = 1 THEN 'Inpatient' 

	WHEN	ahkc.inpat_ind ='N' 

	AND	ahkc.ipp_cd = 1 THEN 'Outpatient' 

	WHEN	ahkc.ipp_cd = 2 THEN 'Professional' 

ELSE	'Professional' 

END	as Cat, 

CASE	WHEN ah.pgbk_ind = 'Y' THEN ah.bill_chrg_amt 

ELSE	0.00 

END	as chrg_amt_y, 

CASE	WHEN ah.pgbk_ind = 'N' THEN ah.bill_chrg_amt 

ELSE	0.00 

END	as chrg_amt_n, 

CASE	ahkc.clm_src_sys_key 

	WHEN	153 THEN ah.serv_pd_amt + ahi.surchrg_amt 

ELSE	ah.serv_pd_amt 

end	as pd_amt, 

CASE	WHEN ahkc.clm_src_sys_key = 159 THEN ah.serv_pd_amt 

	WHEN	ah.prov_fin_agrmt_typ_cd = 'C' THEN ah.serv_appr_pay_amt 

	WHEN	ahkc.clm_src_sys_key = 153 THEN ah.serv_pd_amt + ahi.surchrg_amt 

ELSE	ah.serv_pd_amt 

END	as s_pd_amt, SUM (1) OVER (PARTITION BY ah.hcs_key 

ORDER	BY ahkm.mbr_key, ahkm.prod_cmpnt_key, mpc.cust_join_key,

		ah.hcs_key, ahkc.serv_strt_dt,mpc.oth_carr_ins_cd desc, mpc.oth_carr_prim_ind desc,

		pe.dept_nbr desc ROWS UNBOUNDED PRECEDING) as row_nbr 

FROM	adj_hcs	ah INNER JOIN adj_hcs_ii	ahi 

	ON	ah.hcs_key = ahi.hcs_key 

	and	((AH.hlth_serv_cd IN ('J1438','J1745','J0215','S0193','J9212',

		'J2941','J2940','J0205','J1785','Q2014','J0287', 'J0289','J0288',

		'J0740','Q2018','J9215','J0585', 'J0587','J1650','J1652','J9151',

		'J9001','J9355', 'J9300','J9266','J9160','J9015','J9310','J8999',

		'J7505','Q2019','J7511','J7513','90700','90748', '90744','90746',

		'90747','90733','90732','90665', '90669','90675','90740','90743',

		'90691','90632', '90633','90716')) 

	or	(ah.hlth_serv_cd ='J3490' 

	and	ah.prim_diag_cd in ('714','7140','7141','7142', '7143','7144',

		'7145','7146','7147','7148','7149','6960', '6961')) 

	or	(ah.hlth_serv_cd='J3490' 

	and	ah.prim_diag_cd in ('07051','07054')) 

	or	(ah.hlth_serv_cd in ('Q2012','J3490','J0205','J1785') 

	and	ah.prim_diag_cd = '2727') 

	or	(ah.hlth_serv_cd in ('J9202','J9218','J9217','J1950') 

	and	ah.prim_diag_cd in ('185','2189','2591','6173')) 

	or	(ah.hlth_serv_cd in ('J2941','J2940','J3490') 

	and	ah.prim_diag_cd in ('1943','2370','253','2530','2531', '2532',

		'2533','2534','2537','2539','585','588', '7586','75981','75989',

		'7640','7834','7994')) 

	or	(ah.hlth_serv_cd in ('J3490','J7190','J7193','J7195','S0017',

		'J7199','J7198','J7194','J7192','Q2022','J7191', 'Q0187','J2597') 

	and	ah.prim_diag_cd in ('286','2860','2861','2864','2867')) 

	or	(ah.hlth_serv_cd in ('J1460','J1470','J1480','J1490','J1500',

		'J1510','J1520','J1530','J1540','J1550','J1560', 'J2790','J2788',

		'J0850','J3490','J1563','J1564', 'J2792','J2798') 

	and	ah.prim_diag_cd in ('279','27901','27903','27904','27906',

		'27912','2793','2873','7093')) 

	or	(ah.hlth_serv_cd in ('J8499','J9212','J9214','J3490','J9213') 

	and	ah.prim_diag_cd in ('07054','07051','7904')) 

	or	(ah.hlth_serv_cd in ('J1438','J3490') 

	and	ah.prim_diag_cd in ('7140','7141', '7142','7143','71431',

		'71432','71433')) 

	or	(ah.hlth_serv_cd in ('J7317','J7320','J3490') 

	and	ah.prim_diag_cd in ('7169')) 

	or	(ah.hlth_serv_cd in ('J1745') 

	and	ah.prim_diag_cd in ('5559')) 

	or	(ah.hlth_serv_cd in ('J1825','J1830','Q2010','J9293','J3490')

	and	ah.prim_diag_cd ='340') 

	or	(ah.hlth_serv_cd in ('J7639','J7682')

	and	ah.prim_diag_cd in ('2770','2776', '7707')) 

	or	(ah.hlth_serv_cd in ('J1565','J3490') 

	and	ah.prim_diag_cd in ('0796','7650')) 

	or	(ah.hlth_serv_cd in ('J1565','J3490','90378') 

	and	ah.prim_diag_cd in ('0796', '765','7650','7651','7700','7701',

		'7707','7708')) 

	or	(ah.hlth_serv_cd in ('J3590') 

	and	ah.prim_diag_cd in ('493','4930','4939')) 

	or	(ah.hlth_serv_cd in ('J3490','S0114') 

	and	ah.prim_diag_cd in ('4150','4160','4168')) 

	or	(ah.hlth_serv_cd in ('J2916') 

	and	ah.prim_diag_cd in ('279','27901','27903', '27904','27906',

		'27912','2793','2873','7093')) 

	or	(ah.hlth_serv_cd in ('J3490','J3590') 

	AND	ah.prim_diag_cd='6961') 

	or	(ah.hlth_serv_cd in ('J3240') 

	AND	ah.prim_diag_cd IN ('193')) 

	or	(ah.hlth_serv_cd in ('J0880','Q0136','Q9920','Q9921','Q9922',

		'Q9923', 'Q9924','Q9925','Q9926','Q9927','Q9928','Q9929','Q9930',

		'Q9931','Q9932','Q9933','Q9934','Q9935','Q9936','Q9937', 'Q9938',

		'Q9939','Q9940') 

	and	ah.prim_diag_cd in ('5839','2859')) 

	or	(ah.hlth_serv_cd in ('J1440','J1441','S0135') 

	and	ah.prim_diag_cd in ('288','042','2880')) 

	or	(ah.hlth_serv_cd in ('J2820') 

	and	ah.prim_diag_cd in ('2059','042')) 

	or	(ah.hlth_serv_cd in ('J2355') 

	and	ah.prim_diag_cd in ('2875')) 

	or	(ah.hlth_serv_cd ='S0088' 

	and	ah.prim_diag_cd='2051') 

	or	(ah.hlth_serv_cd ='J8999' 

	and	ah.prim_diag_cd='1629') 

	or	(ah.hlth_serv_cd ='J8700' 

	and	ah.prim_diag_cd='191') 

	or	(ah.hlth_serv_cd ='J9999' 

	and	ah.prim_diag_cd='5559')	or	(ah.hlth_serv_cd in ('J8520','J8521') 

	and	ah.prim_diag_cd IN ('1749','154'))) INNER JOIN hlth_serv_cd_dom as hscd 

	on	ah.hlth_serv_cd=hscd.hlth_serv_cd INNER JOIN adj_hcs_key_mbr	ahkm 

	ON	ah.hcs_key = ahkm.hcs_key INNER JOIN adj_hcs_key_grp	ahkg 

	ON	ahkm.hcs_key = ahkg.hcs_key 

	AND	( ('All' in ('All') 

	OR	ahkg.pkg_nbr in ('All')) ) INNER JOIN adj_hcs_key_clm 	 ahkc 

	ON	ahkc.hcs_key=ahkm.hcs_key 

	AND	ahkc.clm_src_sys_key NOT IN (159,160,161,184) 

	and	ahkc.inpat_ind not in ('Y') 

	AND	(ahkc.pd_dt BETWEEN '20050101' 

	AND	'20071231') 

	AND	ahkc.serv_strt_dt BETWEEN (

CASE	WHEN 'N' ='Y' THEN '19900101' 

ELSE	'17770707' 

END	) 

	AND	(

CASE	WHEN 'N' ='Y' THEN '20051231' 

ELSE	'20991231' 

END	) INNER JOIN (

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div 	 gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and gd.grp_id in ('00009835' , '00009836') 

	and	( ('All' in ('All') 

	or	gd.subgrp_id in ('All')) ) 

	and	(( 'FACETS' = 'NASCO' 

	and	gd.src_sys_key IN (153,154,203)) 

	or	('FACETS'='FACETS' 

	and	gd.src_sys_key IN (167,203)) 

	or	('FACETS'='NASCO/FACETS' 

	and	gd.src_sys_key IN (153,154,167,203)) 

	or	('FACETS'='MO LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,199,203)) 

	or	('FACETS'='WI LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,202,203))) 

group	by 1,2,3,4 EXCEPT 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and ('FACETS' in ( 'MO LEGACY AND FACETS','WI LEGACY AND FACETS' ) 

	and	(gd.src_sys_key IN (167) 

	and	gd.eff_dt < '20060901' 

	and	gd.grp_id in ( 

select	gd2.grp_id 

from	grp_div gd2 

where	gd2.src_sys_key in ( 199,202,203) 

	and	gd.grp_id in ('00009835' , '00009836')) )) 

group	by 1,2,3,4 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,ga.grp_div_key ,ga.src_sys_key ,

		ga.eff_dt ,ga.canc_dt 

FROM	grp_assn as ga, grp_div as gd 

WHERE	1=

case	when 'Group Association ID' = 'Group Number' then 1 

else	0 

end	and ga.assn_id in ('00009835' , '00009836') 

	and	ga.grp_div_key = gd.grp_div_key 

	and	ga.clos_dt = '20991231'

	and	ga.src_sys_key in (167) 

group	by 1,2,3,4,5,6 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	site_grp_acct as sga, grp_div as gd 

WHERE	1=

case	when 'Group Account ID' = 'Group Number' then 1 

else	0 

end	and sga.grp_acct_id in ('00009835' , '00009836') 

	and	sga.grp_acct_key = gd.grp_acct_key 

	and	sga.clos_dt = '20991231'

	and	gd.src_sys_key in ( 153, 154, 167,199,202) 

GROUP	BY 1,2,3,4) GD 

	ON	ahkg.grp_div_key = gd.grp_div_key 

	AND	substr(CAST(ahkc.serv_strt_dt as char(12)) ,1,6) BETWEEN(

CASE	WHEN 'Group Number' = 'Group Association ID' THEN substr(gd.eff_dt,

		1,6) 

ELSE	( '177707' ) 

END	) 

	AND	(

CASE	WHEN 'Group Number' = 'Group Association ID' THEN substr(gd.canc_dt,

		1,6) 

ELSE	( '209912' ) 

END	) LEFT JOIN (

SELECT	mpc.mbr_key, mpc.cust_join_key, mpc.prod_cmpnt_key, mpc.clm_src_sys_key,

		mpc.eff_dt, mpc.canc_dt, mpc.pd_from_dt, mpc.pd_thru_dt, MAX(mpc.oth_carr_ins_cd) as oth_carr_ins_cd,

		MAX(mpc.oth_carr_prim_ind) as oth_carr_prim_ind 

FROM	(

SELECT	mpc2.mbr_key, mpc2.cust_join_key, mpc2.prod_cmpnt_key, acme.clm_src_sys_key,

		mpc2.eff_dt, mpc2.canc_dt, 

CASE	WHEN mpc2.oth_carr_ins_cd = 'M' THEN 'M' 

ELSE	'A' 

END	as oth_carr_ins_cd, mpc2.oth_carr_prim_ind, 

CASE	WHEN mpc2.clos_dt >= acme.mpc_extr_dt THEN to_date('01991231' , 'YYYYMMDD') 

ELSE	mpc2.clos_dt 

END	as clos_dt2, acme.mpc_extr_dt, MIN(acme.pd_from_dt) as pd_from_dt,

		MAX(acme.pd_thru_dt) as pd_thru_dt 

FROM	MBR_PROD_CMPNT mpc2 INNER JOIN (

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and gd.grp_id in ('00009835' , '00009836') 

	and	( ('All' in ('All') 

	or	gd.subgrp_id in ('All')) ) 

	and	(( 'FACETS' = 'NASCO' 

	and	gd.src_sys_key IN (153,154,203)) 

	or	('FACETS'='FACETS' 

	and	gd.src_sys_key IN (167,203)) 

	or	('FACETS'='NASCO/FACETS' 

	and	gd.src_sys_key IN (153,154,167,203)) 

	or	('FACETS'='MO LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,199,203)) 

	or	('FACETS'='WI LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,202,203))) 

group	by 1,2,3,4 EXCEPT 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and ('FACETS' in ( 'MO LEGACY AND FACETS','WI LEGACY AND FACETS' ) 

	and	(gd.src_sys_key IN (167) 

	and	gd.eff_dt < '20060901' 

	and	gd.grp_id in ( 

select	gd2.grp_id 

from	grp_div gd2 

where	gd2.src_sys_key in ( 199,202,203) 

	and	gd.grp_id in ('00009835' , '00009836')) )) 

group	by 1,2,3,4 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,ga.grp_div_key ,ga.src_sys_key ,

		ga.eff_dt ,ga.canc_dt 

FROM	grp_assn as ga, grp_div as gd 

WHERE	1=

case	when 'Group Association ID' = 'Group Number' then 1 

else	0 

end	and ga.assn_id in ('00009835' , '00009836') 

	and	ga.grp_div_key = gd.grp_div_key 

	and	ga.clos_dt = '20991231'

	and	ga.src_sys_key in (167) 

group	by 1,2,3,4,5,6 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	site_grp_acct as sga, grp_div as gd 

WHERE	1=

case	when 'Group Account ID' = 'Group Number' then 1 

else	0 

end	and sga.grp_acct_id in ('00009835' , '00009836') 

	and	sga.grp_acct_key = gd.grp_acct_key 

	and	sga.clos_dt = '20991231'

	and	gd.src_sys_key in (153, 154, 167, 199, 202) 

GROUP	BY 1,2,3,4) GD 

	ON	mpc2.cust_join_key = gd.grp_div_key 

	AND	mpc2.canc_dt >= gd.eff_dt 

	AND	mpc2.eff_dt <= gd.canc_dt 

	AND	mpc2.canc_dt >= mpc2.eff_dt 

	AND	mpc2.canc_dt >= mpc2.eff_dt INNER JOIN aro_clms_mpc_extr acme 

	ON	mpc2.open_dt <= acme.mpc_extr_dt 

	AND	clm_src_sys_key not in (19,154,158,159,160,161,184,188,189,

		194,195,196,200,201) 

	AND	clm_src_sys_key in (

SELECT	DISTINCT gd.src_sys_key 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and gd.grp_id in ('00009835' , '00009836') 

group	by 1 

UNION

 

SELECT	DISTINCT ga.src_sys_key 

FROM	grp_assn as ga, grp_div as gd 

WHERE	1=

case	when 'Group Association ID' = 'Group Number' then 1 

else	0 

end	and ga.assn_id in ('00009835' , '00009836') 

	and	ga.grp_div_key = gd.grp_div_key 

	and	ga.clos_dt = '20991231' 

	and	ga.src_sys_key in (167) 

group	by 1 

UNION

 

SELECT	DISTINCT gd.src_sys_key 

FROM	site_grp_acct as sga, grp_div as gd 

WHERE	1=

case	when 'Group Account ID' = 'Group Number' then 1 

else	0 

end	and sga.grp_acct_id in ('00009835' , '00009836') 

	and	sga.grp_acct_key = gd.grp_acct_key 

	and	sga.clos_dt = '20991231' 

	and	gd.src_sys_key in (153, 154, 167,199,202) 

GROUP	BY 1) 

	and	acme.clos_dt = '20991231' 

group	by 1,2,3,4,5,6,7,8,9,10 ) mpc INNER JOIN (

SELECT	mpc3.mbr_key, mpc3.prod_cmpnt_key, mpc3.cust_join_key, mpc3.clm_src_sys_key,

		mpc3.mpc_extr_dt, max( 

CASE	WHEN mpc3.clos_dt >= mpc3.mpc_extr_dt THEN to_date('01991231' , 'YYYYMMDD') 

ELSE	mpc3.clos_dt 

END	) as clos_dt2 

FROM	(

SELECT	acme.mpc_extr_dt, acme.clm_src_sys_key, mpc2.mbr_key, mpc2.prod_cmpnt_key,

		mpc2.cust_join_key, mpc2.clos_dt 

FROM	MBR_PROD_CMPNT mpc2 INNER JOIN (

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and gd.grp_id in ('00009835' , '00009836') 

	and	( ('All' in ('All') 

	or	gd.subgrp_id in ('All')) ) 

	and	(( 'FACETS' = 'NASCO' 

	and	gd.src_sys_key IN (153,154,203)) 

	or	('FACETS'='FACETS' 

	and	gd.src_sys_key IN (167,203)) 

	or	('FACETS'='NASCO/FACETS' 

	and	gd.src_sys_key IN (153,154,167,203)) 

	or	('FACETS'='MO LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,199,203)) 

	or	('FACETS'='WI LEGACY AND FACETS' 

	and	gd.src_sys_key IN (167,202,203))) 

group	by 1,2,3,4 EXCEPT 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and ('FACETS' in ( 'MO LEGACY AND FACETS','WI LEGACY AND FACETS' ) 

	and	(gd.src_sys_key IN (167) 

	and	gd.eff_dt < '20060901' 

	and	gd.grp_id in ( 

select	gd2.grp_id 

from	grp_div gd2 

where	gd2.src_sys_key in ( 199,202,203) 

	and	gd.grp_id in ('00009835' , '00009836')) )) 

group	by 1,2,3,4 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,ga.grp_div_key ,ga.src_sys_key ,

		ga.eff_dt ,ga.canc_dt 

FROM	grp_assn as ga, grp_div as gd 

WHERE	1=

case	when 'Group Association ID' = 'Group Number' then 1 

else	0 

end	and ga.assn_id in ('00009835' , '00009836') 

	and	ga.grp_div_key = gd.grp_div_key 

	and	ga.clos_dt = '20991231'

	and	ga.src_sys_key in (167) 

group	by 1,2,3,4,5,6 

UNION

 

SELECT	DISTINCT gd.grp_id ,gd.subgrp_id ,gd.grp_div_key ,gd.src_sys_key,

		min(gd.eff_dt) as eff_dt, max(gd.canc_dt) as canc_dt 

FROM	site_grp_acct as sga, grp_div as gd 

WHERE	1=

case	when 'Group Account ID' = 'Group Number' then 1 

else	0 

end	and sga.grp_acct_id in ('00009835' , '00009836') 

	and	sga.grp_acct_key = gd.grp_acct_key 

	and	sga.clos_dt = '20991231'

	and	gd.src_sys_key in (153, 154, 167, 199, 202) 

GROUP	BY 1,2,3,4) GD 

	ON	mpc2.cust_join_key = gd.grp_div_key 

	AND	mpc2.canc_dt >= gd.eff_dt 

	AND	mpc2.eff_dt <= gd.canc_dt 

	AND	mpc2.canc_dt >= mpc2.eff_dt 

	AND	mpc2.canc_dt >= mpc2.eff_dt INNER JOIN aro_clms_mpc_extr acme 

	ON	mpc2.open_dt <= acme.mpc_extr_dt 

	AND	clm_src_sys_key not in (19,154,158,159,160,161,184,188,189,

		194,195,196,200,201) 

	AND	clm_src_sys_key in (

SELECT	DISTINCT gd.src_sys_key 

FROM	grp_div gd 

WHERE	1=

case	when 'Group Number' = 'Group Number' then 1 

else	0 

end	and gd.grp_id in ('00009835' , '00009836') 

group	by 1 

UNION

 

SELECT	DISTINCT ga.src_sys_key 

FROM	grp_assn as ga, grp_div as gd 

WHERE	1=

case	when 'Group Association ID' = 'Group Number' then 1 

else	0 

end	and ga.assn_id in ('00009835' , '00009836') 

	and	ga.grp_div_key = gd.grp_div_key 

	and	ga.clos_dt = '20991231' 

	and	ga.src_sys_key in (167) 

group	by 1 

UNION

 

SELECT	DISTINCT gd.src_sys_key 

FROM	site_grp_acct as sga, grp_div as gd 

WHERE	1=

case	when 'Group Account ID' = 'Group Number' then 1 

else	0 

end	and sga.grp_acct_id in ('00009835' , '00009836') 

	and	sga.grp_acct_key = gd.grp_acct_key 

	and	sga.clos_dt = '20991231' 

	and	gd.src_sys_key in (153, 154, 167,199,202) 

GROUP	BY 1) 

	and	acme.clos_dt = '20991231' ) mpc3 

GROUP	BY 1,2,3,4,5 ) mpc4 

	ON	mpc.mbr_key = mpc4.mbr_key 

	AND	mpc.prod_cmpnt_key = mpc4.prod_cmpnt_key 

	AND	mpc.cust_join_key = mpc4.cust_join_key 

	AND	mpc.clos_dt2 = mpc4.clos_dt2 

	AND	mpc.mpc_extr_dt = mpc4.mpc_extr_dt 

GROUP	BY 1,2,3,4,5,6,7,8 ) mpc 

	ON	ahkm.mbr_key = mpc.mbr_key 

	AND	ahkm.prod_cmpnt_key = mpc.prod_cmpnt_key 

	AND	ahkg.grp_div_key = mpc.cust_join_key 

	AND	ahkc.clm_src_sys_key = mpc.clm_src_sys_key 

	AND	ahkc.pd_dt BETWEEN mpc.pd_from_dt 

	AND	mpc.pd_thru_dt 

	AND	ahkc.serv_strt_dt BETWEEN mpc.eff_dt 

	and	mpc.canc_dt LEFT JOIN mbr m 

	ON	ahkm.mbr_key = m.mbr_key 

LEFT JOIN prod_cmpnt	pc 

	ON	ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 

LEFT JOIN prod_cd_dom	 	 pcd 

	ON	pcd.prod_cd = pc.prod_cd 

LEFT JOIN prod_typ_cd_dom	 ptcd 

	ON	ptcd.prod_typ_cd = pc.prod_typ_cd 

	and	pc.hlth_cov_cls_cd not in ( 'DN') 

LEFT JOIN payrl_emp pe 

	ON	ahkm.sub_mbr_key = pe.mbr_key 

	AND	gd.grp_div_key = pe.grp_div_key 

	AND	ah.adjud_dt between pe.open_dt 

	AND	pe.clos_dt 

	AND	ahkm.mbr_src_sys_key IN (153,154,158) 

	AND	pe.dept_nbr > ' ' 

	AND	ahkc.serv_strt_dt BETWEEN pe.eff_dt 	AND	pe.canc_dt 

	AND	'No Segment Selected' <> 'NO SEGMENT SELECTED' 

LEFT JOIN segm s 

	ON	gd.grp_div_key = s.grp_div_key 

	AND	ahkg.pkg_nbr=s.pkg_nbr 

	AND	s.clos_dt='20991231' 

	AND	ahkc.serv_strt_dt BETWEEN s.eff_dt 	AND	s.canc_dt 

	AND	((pe.dept_nbr =s.dept_nbr) OR	(pe.dept_nbr is null 	and	s.dept_nbr is null) 	OR	(pe.dept_nbr is null 	and	s.dept_nbr =' ') ) 

	AND	((CASE	WHEN ahi.its_plan_id <> ' ' THEN ahi.its_plan_id ELSE	ahi.serv_plan_id END	=s.plan_id )

	or	(CASE	WHEN ahi.its_plan_id <> ' ' THEN ahi.its_plan_id ELSE	ahi.serv_plan_id END	is null 

	and	s.plan_id is null) ) 

	AND	'No Segment Selected' <> 'NO SEGMENT SELECTED' ) a 

WHERE	row_nbr = 1 

	AND	a.prod in ('HOTT' , 'MEDICAL' , 'MEDICARE CARVEOUT' , 'MEDICARE HMO' ,	'MEDICARE SUPP') 

GROUP	BY 1,2,3,4,5 ) a2 

GROUP	BY 1,2,3,4,5 ) a3 

GROUP	BY 1,2,3,4 ) a4 

GROUP	BY 1,2,3 

;

-- The following to GUC settingss should contribute to makeing explain  plans be identical on different database configuraitons.

set gp_segments_for_planner=4;
set gp_cost_hashjoin_chainwalk=on;
SELECT
	L.high_claims_amt,
	L.groupby,
	0             AS aslu_med,
	0             AS aslu_drug,
	0             AS aslu_den,
	0             AS aslu_vis,
	SUM(L.drug_by_mem)     AS drug_by_mem,
	SUM(L.med_by_mem)      AS med_by_mem,
	SUM(L.tot_by_mem)      AS tot_by_mem,
	SUM(L.lrg_clm_del_med) AS lrg_clm_del_med,
	SUM(L.lrg_clm_del_tot) AS lrg_clm_del_tot 
FROM
	(	SELECT
			'75000'::text AS high_claims_amt,
			b.groupby,
			b.sub_dep,
			b.drug_by_mem,
			b.med_by_mem,
			b.tot_by_mem,
			CASE 
				WHEN b.tot_by_mem >= '75000' 
				THEN b.tot_by_mem - '75000' 
				ELSE 0 
			END               AS lrg_clm_del_tot,
			CASE 
				WHEN b.med_by_mem >= '75000' 
				THEN b.med_by_mem - '75000' 
				ELSE 0 
			END               AS lrg_clm_del_med 
		FROM
			(	SELECT
					bb.groupby,
					bb.sub_dep,
					SUM( 
					CASE 
						WHEN bb.prod = 'DRUG' 
						THEN bb.pd_by_mem 
						ELSE 0.00 
					END )    AS drug_by_mem,
					SUM( 
					CASE 
						WHEN bb.prod <> 'DRUG' 
						THEN bb.pd_by_mem 
						ELSE 0.00 
					END )    AS med_by_mem,
					SUM(bb.pd_by_mem) AS tot_by_mem 
				FROM
					(	SELECT
							a2.groupby,
							a2.prod1       AS prod,
							a2.segment1,
							a2.segment2,
							a2.segment3,
							a2.sub_dep,
							SUM(a2.pd_amt) AS pd_by_mem 
						FROM
							(	SELECT
									a.* 
								FROM
									(	SELECT
											a.*,
											SUM (1) OVER (PARTITION BY a.hcs_key 
											ORDER BY
												a.mbr_key,
												a.prod_cmpnt_key,
												a.cust_join_key,
												a.hcs_key,
												a.serv_strt_dt,
												a.oth_carr_ins_cd DESC,
												a.oth_carr_prim_ind DESC ROWS UNBOUNDED PRECEDING) AS row_nbr 
										FROM
											(	SELECT
													mpc.oth_carr_ins_cd,
													mpc.oth_carr_prim_ind,
													mpc.cust_join_key,
													CASE 
														WHEN 'Subscriber'::TEXT = 'Member'::TEXT 
														THEN ( 
														CASE 
															WHEN M.src_sys_key = 150 AND
															CHAR_LENGTH(TRIM(M.sub_id)) > 9 
															THEN SUBSTRING(TRIM(M.sub_id) 
															FROM
																1 FOR 9) 
															WHEN CHAR_LENGTH(M.sub_id) > 9 AND
															M.src_sys_key <> 150 
															THEN SUBSTRING(TRIM(M.sub_id) 
															FROM
																4 FOR 9) 
															ELSE M.sub_id 
														END )|| TRIM(M.brth_dt) || substr(M.frst_name,1,5) || TRIM(M.gndr_cd) 
														ELSE ( 
														CASE 
															WHEN CHAR_LENGTH(M.sub_id) > 9 
															THEN SUBSTRING(TRIM(M.sub_id) 
															FROM
																4 FOR 9) 
															ELSE M.sub_id 
														END ) 
													END                       AS sub_dep,
													CASE 'None'::TEXT 
														WHEN 'Group' 
														THEN gd.grp_id 
														WHEN 'Group - Subgroup' 
														THEN gd.grp_id||'-'||gd.subgrp_id 
														WHEN 'Group - Package' 
														THEN gd.grp_id||'-'||ahkg.pkg_nbr 
														WHEN 'Group - Subgroup - Package' 
														THEN gd.grp_id||'-'||gd.subgrp_id||'-'||ahkg.pkg_nbr 
														ELSE 'All' 
													END                       AS groupby,
													CASE 
														WHEN ahkc.clm_src_sys_key IN (161,
														201) 
														THEN ( 
														CASE ahkm.mbr_src_sys_key 
															WHEN 203 
															THEN 'MEDICARE PART D' 
															ELSE 'DRUG' 
														END ) 
														WHEN ahkc.clm_src_sys_key IN ( 161,
														201) 
														THEN 'DRUG' 
														WHEN (ahkc.clm_src_sys_key = 184 OR
														pc.hlth_cov_cls_cd = 'VI') 
														THEN 'VISION' 
														WHEN (ahkc.clm_src_sys_key IN (160,
														200) OR
														pc.hlth_cov_cls_cd = 'DN') 
														THEN 'DENTAL' 
														WHEN ahkc.clm_src_sys_key = 159 
														THEN 'MENTAL HEALTH' 
														WHEN pc.hlth_cov_typ_cd IN (9,
														10) 
														THEN 'HOTT' 
														WHEN (pc.medcr_rel_cov_cd = 'S' OR
														(pc.medcr_rel_cov_cd='R' AND
														ahkc.clm_src_sys_key=153) OR
														pc.hlth_cov_typ_cd IN (26,
														28,
														41)) 
														THEN 'MEDICARE SUPP' 
														WHEN pc.medcr_rel_cov_cd = 'R' 
														THEN 'MEDICARE HMO' 
														WHEN 'No'::TEXT ='Yes' AND
														mpc. oth_carr_ins_cd='M' AND
														mpc. oth_carr_prim_ind = 'Y' 
														THEN 'MEDICARE CARVEOUT' 
														ELSE 'MEDICAL' 
													END                       AS prod1b,
													'MEDICAL'::TEXT             AS prod1,
													'no prod_typ'::TEXT         AS prod2,
													'NO SEGMENT SELECTED'::TEXT AS segment1,
													'NO SEGMENT SELECTED'::TEXT AS segment2,
													'NO SEGMENT SELECTED'::TEXT AS segment3,
													ahkc.clm_src_sys_key,
													ah.hcs_key,
													ahkm.mbr_key ,
													ahkm.prod_cmpnt_key,
													ahkg.grp_div_key,
													CASE 
														WHEN ahkc. clm_src_sys_key = 126 
														THEN 'I' 
														WHEN ahkc. clm_src_sys_key = 127 AND
														pc.prod_typ_cd = 2 
														THEN 'I' 
														ELSE ah.reimb_prov_in_ntwk_cd 
													END                       AS ntwk_cd,
													CASE 
														WHEN gd.src_sys_key IN (153,
														154,
														199) 
														THEN TRIM(ahi.actv_plan_id)|| TRIM(ah.clm_id) 
														WHEN gd.src_sys_key IN (167,
														202) 
														THEN TRIM(ahi.actv_plan_id)||SUBSTRING(ah.clm_id 
														FROM
															1 FOR (CHAR_LENGTH(TRIM(ah.clm_id)) -2)) 
														ELSE ah.clm_id 
													END                       AS clmid,
													CASE 
														WHEN (ah.serv_diag_cd IS NULL OR
														ah.serv_diag_cd LIKE ' %') AND
														(ah.prim_diag_cd IS NULL OR
														ah.prim_diag_cd LIKE ' %') 
														THEN 'No DX' 
														WHEN (ah.serv_diag_cd IS NULL OR
														ah.serv_diag_cd LIKE ' %') AND
														ah.prim_diag_cd IS NOT NULL 
														THEN ah.prim_diag_cd 
														ELSE ah.serv_diag_cd 
													END                       AS diag_cd,
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END                       AS serv_plan_id,
													ahkc.serv_strt_dt,
													ahkc.pd_dt,
													ah.serv_pd_amt,
													ah.disc_cov_amt,
													ah.bill_chrg_amt,
													CASE 
														WHEN ahkc.ipp_cd=1 AND
														ahkc.inpat_ind='Y' 
														THEN 'INPATIENT' 
														WHEN ahkc.ipp_cd =1 AND
														ahkc.inpat_ind='N' 
														THEN 'OUTPATIENT' 
														WHEN ahkc.ipp_cd=2 
														THEN 'PROFESSIONAL' 
														WHEN ahkc.ipp_cd=3 
														THEN 'DRUG' 
														WHEN ahkc.ipp_cd IN (7,
														8,
														9) 
														THEN 'UNKNOWN' 
														ELSE 'OTHER' 
													END                       AS clm_typ,
													CASE ahkc.clm_src_sys_key 
														WHEN 153 
														THEN ah.serv_pd_amt + ahi.surchrg_amt 
														ELSE ah.serv_pd_amt 
													END                       AS pd_amt,
													CASE 
														WHEN ahkc.clm_src_sys_key = 159 
														THEN ah.serv_pd_amt 
														WHEN ah.prov_fin_agrmt_typ_cd = 'C' 
														THEN ah.serv_appr_pay_amt 
														WHEN ahkc.clm_src_sys_key = 153 
														THEN ah.serv_pd_amt + ahi.surchrg_amt 
														ELSE ah.serv_pd_amt 
													END                       AS s_pd_amt 
												FROM
													adj_hcs ah 
													INNER JOIN adj_hcs_ii ahi 
													ON ah.hcs_key = ahi.hcs_key 
													INNER JOIN adj_hcs_key_mbr ahkm 
													ON ah.hcs_key = ahkm.hcs_key 
													INNER JOIN adj_hcs_key_grp ahkg 
													ON ahkm.hcs_key = ahkg.hcs_key AND
													( ('All' IN ('All') ) OR
													(ahkg.pkg_nbr IN ('All')) ) 
													INNER JOIN adj_hcs_key_clm ahkc 
													ON ahkc.hcs_key=ahkm.hcs_key AND
													ahkc.clm_src_sys_key NOT IN (159,
													160,
													161,
													184,
													200,
													201) AND
													substr(ahkc.pd_dt,1,6) BETWEEN '200601' AND
													'200712' 
													INNER JOIN (SELECT
																	DISTINCT gd.grp_id ,
																	gd.subgrp_id,
																	gd.grp_div_key ,
																	gd.src_sys_key,
																	MIN(gd.eff_dt)  AS eff_dt,
																	MAX(gd.canc_dt) AS canc_dt 
																FROM
																	grp_div gd 
																WHERE
																	gd.grp_id IN ('00009835' ,
																	'00009836') AND
																	gd.src_sys_key IN (167,
																	203) 
																GROUP BY
																	1,
																	2,
																	3,
																	4 
													)
													GD 
													ON ahkg.grp_div_key = gd.grp_div_key AND
													substr(ahkc.serv_strt_dt ,1,6) BETWEEN( 
													CASE 
														WHEN 'Group Number'::TEXT = 'Group Association ID' 
														THEN substr(gd.eff_dt, 1,6) 
														ELSE ( '177707' ) 
													END ) AND
													( 
													CASE 
														WHEN 'Group Number'::TEXT = 'Group Association ID' 
														THEN substr(gd.canc_dt, 1,6) 
														ELSE ( '209912' ) 
													END ) 
													LEFT JOIN (	SELECT
																	mpc.mbr_key,
																	mpc.cust_join_key,
																	mpc.prod_cmpnt_key,
																	mpc.clm_src_sys_key,
																	mpc.eff_dt,
																	mpc.canc_dt,
																	mpc.pd_from_dt,
																	mpc.pd_thru_dt,
																	MAX(mpc.oth_carr_ins_cd)   AS oth_carr_ins_cd,
																	MAX(mpc.oth_carr_prim_ind) AS oth_carr_prim_ind 
																FROM
																	(	SELECT
																			mpc2.mbr_key,
																			mpc2.cust_join_key,
																			mpc2.prod_cmpnt_key,
																			acme.clm_src_sys_key,
																			mpc2.eff_dt,
																			mpc2.canc_dt,
																			CASE 
																				WHEN mpc2.oth_carr_ins_cd = 'M' 
																				THEN 'M' 
																				ELSE 'A' 
																			END                      AS oth_carr_ins_cd,
																			mpc2.oth_carr_prim_ind,
																			CASE 
																				WHEN mpc2.clos_dt >= acme.mpc_extr_dt 
																				THEN mpc2.clos_dt 
																				ELSE mpc2.clos_dt 
																			END                      AS clos_dt2,
																			acme.mpc_extr_dt,
																			MIN(acme.pd_from_dt) AS pd_from_dt,
																			MAX(acme.pd_thru_dt) AS pd_thru_dt 
																		FROM
																			MBR_PROD_CMPNT mpc2 
																			INNER JOIN (SELECT
																							DISTINCT gd.grp_id ,
																							gd.subgrp_id,
																							gd.grp_div_key ,
																							gd.src_sys_key,
																							MIN(gd.eff_dt)  AS eff_dt,
																							MAX(gd.canc_dt) AS canc_dt 
																						FROM
																							grp_div gd 
																						WHERE
																							gd.grp_id IN ('00009835' ,
																							'00009836') AND
																							gd.src_sys_key IN (167,
																							203) 
																						GROUP BY
																							1,
																							2,
																							3,
																							4 
																			)
																			GD 
																			ON mpc2.cust_join_key = gd.grp_div_key AND
																			mpc2.canc_dt >= gd.eff_dt AND
																			mpc2.eff_dt <= gd.canc_dt AND
																			mpc2.canc_dt >= mpc2.eff_dt AND
																			mpc2.canc_dt >= mpc2.eff_dt 
																			INNER JOIN aro_clms_mpc_extr acme 
																			ON mpc2.open_dt <= acme.mpc_extr_dt AND
																			clm_src_sys_key NOT IN (19,
																			154,
																			158,
																			159,
																			160,
																			161,
																			184,
																			188,
																			189,
																			194,
																			195,
																			196,
																			200,
																			201) AND
																			clm_src_sys_key IN (SELECT
																									DISTINCT gd.src_sys_key 
																								FROM
																									grp_div gd 
																								WHERE
																									gd.grp_id IN ('00009835' ,
																									'00009836') 
																								GROUP BY
																									1 
																			)
																			AND
																			acme.clos_dt = '20991231' 
																			GROUP BY
																				1,
																				2,
																				3,
																				4,
																				5,
																				6,
																				7,
																				8,
																				9,
																				10 
																	)
																	mpc 
																	INNER JOIN (SELECT
																					mpc3.mbr_key,
																					mpc3.prod_cmpnt_key,
																					mpc3.cust_join_key,
																					mpc3.clm_src_sys_key,
																					mpc3.mpc_extr_dt,
																					MAX( 
																					CASE 
																						WHEN mpc3.clos_dt >= mpc3.mpc_extr_dt 
																						THEN mpc3.clos_dt 
																						ELSE mpc3.clos_dt 
																					END ) AS clos_dt2 
																				FROM
																					(	SELECT
																							acme.mpc_extr_dt,
																							acme.clm_src_sys_key,
																							mpc2.mbr_key,
																							mpc2.prod_cmpnt_key,
																							mpc2.cust_join_key,
																							mpc2.clos_dt 
																						FROM
																							MBR_PROD_CMPNT mpc2 
																							INNER JOIN (SELECT
																											DISTINCT gd.grp_id ,
																											gd.subgrp_id,
																											gd.grp_div_key ,
																											gd.src_sys_key,
																											MIN(gd.eff_dt)  AS eff_dt,
																											MAX(gd.canc_dt) AS canc_dt 
																										FROM
																											grp_div gd 
																										WHERE
																											gd.grp_id IN ('00009835' ,
																											'00009836') AND
																											gd.src_sys_key IN (167,
																											203) 
																										GROUP BY
																											1,
																											2,
																											3,
																											4 
																							)
																							GD 
																							ON mpc2.cust_join_key = gd.grp_div_key AND
																							mpc2.canc_dt >= gd.eff_dt AND
																							mpc2.eff_dt <= gd.canc_dt AND
																							mpc2.canc_dt >= mpc2.eff_dt AND
																							mpc2.canc_dt >= mpc2.eff_dt 
																							INNER JOIN aro_clms_mpc_extr acme 
																							ON mpc2.open_dt <= acme.mpc_extr_dt AND
																							clm_src_sys_key NOT IN (19,
																							154,
																							158,
																							159,
																							160,
																							161,
																							184,
																							188,
																							189,
																							194,
																							195,
																							196,
																							200,
																							201) AND
																							clm_src_sys_key IN (SELECT
																													DISTINCT gd.src_sys_key 
																												FROM
																													grp_div gd 
																												WHERE
																													gd.grp_id IN ('00009835' 
																													,
																													'00009836') 
																												GROUP BY
																													1 
																							)
																							AND
																							acme.clos_dt = '20991231' 
																					)
																					mpc3 
																				GROUP BY
																					1,
																					2,
																					3,
																					4,
																					5 
																	)
																	mpc4 
																	ON mpc.mbr_key = mpc4.mbr_key AND
																	mpc.prod_cmpnt_key = mpc4.prod_cmpnt_key AND
																	mpc.cust_join_key = mpc4.cust_join_key AND
																	mpc.clos_dt2 = mpc4.clos_dt2 AND
																	mpc.mpc_extr_dt = mpc4.mpc_extr_dt 
																	GROUP BY
																		1,
																		2,
																		3,
																		4,
																		5,
																		6,
																		7,
																		8 
													)
													mpc 
													ON ahkm.mbr_key = mpc.mbr_key AND
													ahkm.prod_cmpnt_key = mpc.prod_cmpnt_key AND
													ahkg.grp_div_key = mpc.cust_join_key AND
													ahkc.clm_src_sys_key = mpc.clm_src_sys_key AND
													ahkc.pd_dt BETWEEN mpc.pd_from_dt AND
													mpc.pd_thru_dt AND
													ahkc.serv_strt_dt BETWEEN mpc.eff_dt AND
													mpc.canc_dt 
													LEFT JOIN mbr M 
													ON ahkm.mbr_key = M.mbr_key 
													INNER JOIN prod_cmpnt pc 
													ON ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 
													LEFT JOIN payrl_emp pe 
													ON ahkm.sub_mbr_key = pe.mbr_key AND
													gd.grp_div_key = pe.grp_div_key AND
													ah.adjud_dt BETWEEN pe.open_dt AND
													pe.clos_dt AND
													ahkm.mbr_src_sys_key IN (153,
													154,
													158) AND
													pe.dept_nbr > ' ' AND
													ahkc.serv_strt_dt BETWEEN pe.eff_dt AND
													pe.canc_dt AND
													'No Segment Selected' <> 'NO SEGMENT SELECTED' 
													LEFT JOIN segm s 
													ON gd.grp_div_key = s.grp_div_key AND
													ahkg.pkg_nbr=s.pkg_nbr AND
													s.clos_dt='20991231' AND
													ahkc.serv_strt_dt BETWEEN s.eff_dt AND
													s.canc_dt AND
													((pe.dept_nbr =s.dept_nbr) OR
													(pe.dept_nbr IS NULL AND
													s.dept_nbr IS NULL) OR
													(pe.dept_nbr IS NULL AND
													s.dept_nbr =' ') ) AND
													((
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END =s.plan_id ) OR
													(
													CASE 
														WHEN ahi.its_plan_id <> ' ' 
														THEN ahi.its_plan_id 
														ELSE ahi.serv_plan_id 
													END IS NULL AND
													s.plan_id IS NULL) ) AND
													'No Segment Selected' <> 'NO SEGMENT SELECTED' 
											)
											a 
									)
									a 
								WHERE
									row_nbr = 1 AND
									a.prod1b IN ('DENTAL' ,
									'DRUG' ,
									'HOTT' ,
									'MEDICAL' ,
									'MEDICARE CARVEOUT' ,
									'MEDICARE HMO' ,
									'MEDICARE SUPP' ,
									'MENTAL HEALTH' ,
									'VISION') AND
									prod1 IN ('MEDICAL') 
							)
							a2 
						GROUP BY
							1,
							2,
							3,
							4,
							5,
							6 
						UNION
SELECT
	a2.groupby,
	a2.prod1       AS prod,
	a2.segment1,
	a2.segment2,
	a2.segment3,
	a2.sub_dep,
	SUM(a2.pd_amt) AS pd_by_mem 
FROM
	(	SELECT
			a.* 
		FROM
			(	SELECT
					a.*,
					SUM (1) OVER (PARTITION BY a.hcs_key 
					ORDER BY
						a.mbr_key,
						a.prod_cmpnt_key,
						a.grp_div_key,
						a.hcs_key,
						a.serv_strt_dt ROWS UNBOUNDED PRECEDING) AS row_nbr 
				FROM
					(	SELECT
							CASE 
								WHEN 'Subscriber'::TEXT = 'Member'::TEXT 
								THEN ( 
								CASE 
									WHEN CHAR_LENGTH(M.sub_id) > 9 AND
									M.src_sys_key <> 150 
									THEN SUBSTRING(TRIM(M.sub_id) 
									FROM
										4 FOR 9) 
									ELSE M.sub_id 
								END )|| TRIM(M.brth_dt) || substr(M.frst_name,1,5) || TRIM(M.gndr_cd) 
								ELSE ( 
								CASE 
									WHEN CHAR_LENGTH(M.sub_id) > 9 
									THEN SUBSTRING(TRIM(M.sub_id) 
									FROM
										4 FOR 9) 
									ELSE M.sub_id 
								END ) 
							END                       AS sub_dep,
							CASE 'None'::TEXT 
								WHEN 'Group'::TEXT 
								THEN gd.grp_id 
								WHEN 'Group - Subgroup'::TEXT 
								THEN gd.grp_id||'-'||gd.subgrp_id 
								WHEN 'Group - Package'::TEXT 
								THEN gd.grp_id||'-'||ahkg.pkg_nbr 
								WHEN 'Group - Subgroup - Package'::TEXT 
								THEN gd.grp_id||'-'||gd.subgrp_id||'-'||ahkg.pkg_nbr 
								ELSE 'All'::TEXT 
							END                       AS groupby,
							CASE 
								WHEN ahkc.clm_src_sys_key IN (161,
								201) 
								THEN ( 
								CASE ahkm.mbr_src_sys_key 
									WHEN 203 
									THEN 'MEDICARE PART D'::TEXT 
									ELSE 'DRUG'::TEXT 
								END ) 
								WHEN ahkc.clm_src_sys_key IN ( 161,
								201) 
								THEN 'DRUG'::TEXT 
								WHEN (ahkc.clm_src_sys_key = 184 OR
								pc.hlth_cov_cls_cd = 'VI') 
								THEN 'VISION'::TEXT 
								WHEN (ahkc.clm_src_sys_key IN (160,
								200) OR
								pc.hlth_cov_cls_cd = 'DN') 
								THEN 'DENTAL'::TEXT 
								WHEN ahkc.clm_src_sys_key = 159 
								THEN 'MENTAL HEALTH'::TEXT 
								WHEN pc.hlth_cov_typ_cd IN (9,
								10) 
								THEN 'HOTT'::TEXT 
								WHEN (pc.medcr_rel_cov_cd = 'S'::TEXT OR
								(pc.medcr_rel_cov_cd='R'::TEXT AND
								ahkc.clm_src_sys_key=153) OR
								pc.hlth_cov_typ_cd IN (26,
								28,
								41)) 
								THEN 'MEDICARE SUPP'::TEXT 
								WHEN pc.medcr_rel_cov_cd = 'R'::TEXT 
								THEN 'MEDICARE HMO'::TEXT 
								ELSE 'MEDICAL'::TEXT 
							END                       AS prod1b,
							CASE 
								WHEN (
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D'::TEXT 
										ELSE 'DRUG'::TEXT 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG'::TEXT 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION'::TEXT 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL'::TEXT 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH'::TEXT 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='HOTT' 
								THEN 'MEDICAL' 
								WHEN (
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE SUPP' 
								THEN 'MEDICAL' 
								WHEN (
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE HMO' 
								THEN 'MEDICAL' 
								WHEN (
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END)='MEDICARE PART D' 
								THEN 'MEDICAL' 
								ELSE (
								CASE 
									WHEN ahkc.clm_src_sys_key IN (161,
									201) 
									THEN ( 
									CASE ahkm.mbr_src_sys_key 
										WHEN 203 
										THEN 'MEDICARE PART D' 
										ELSE 'DRUG' 
									END ) 
									WHEN ahkc.clm_src_sys_key IN ( 161,
									201) 
									THEN 'DRUG' 
									WHEN (ahkc.clm_src_sys_key = 184 OR
									pc.hlth_cov_cls_cd = 'VI') 
									THEN 'VISION' 
									WHEN (ahkc.clm_src_sys_key IN (160,
									200) OR
									pc.hlth_cov_cls_cd = 'DN') 
									THEN 'DENTAL' 
									WHEN ahkc.clm_src_sys_key = 159 
									THEN 'MENTAL HEALTH' 
									WHEN pc.hlth_cov_typ_cd IN (9,
									10) 
									THEN 'HOTT' 
									WHEN (pc.medcr_rel_cov_cd = 'S' OR
									(pc.medcr_rel_cov_cd='R' AND
									ahkc.clm_src_sys_key=153) OR
									pc.hlth_cov_typ_cd IN (26,
									28,
									41)) 
									THEN 'MEDICARE SUPP' 
									WHEN pc.medcr_rel_cov_cd = 'R' 
									THEN 'MEDICARE HMO' 
									ELSE 'MEDICAL' 
								END) 
							END                       AS prod1,
							'no prod_typ'::TEXT         AS prod2,
							'NO SEGMENT SELECTED'::TEXT AS segment1,
							'NO SEGMENT SELECTED'::TEXT AS segment2,
							'NO SEGMENT SELECTED'::TEXT AS segment3,
							ahkc.clm_src_sys_key,
							ah.hcs_key,
							ahkm.mbr_key ,
							ahkm.prod_cmpnt_key,
							ahkg.grp_div_key,
							CASE 
								WHEN ahkc. clm_src_sys_key = 126 
								THEN 'I' 
								WHEN ahkc. clm_src_sys_key = 127 AND
								pc.prod_typ_cd = 2 
								THEN 'I' 
								ELSE ah.reimb_prov_in_ntwk_cd 
							END                       AS ntwk_cd,
							CASE 
								WHEN gd.src_sys_key IN (153,
								154,
								199) 
								THEN TRIM(ahi.actv_plan_id)|| TRIM(ah.clm_id) 
								WHEN gd.src_sys_key IN (167,
								202) 
								THEN TRIM(ahi.actv_plan_id)||SUBSTRING(ah.clm_id 
								FROM
									1 FOR (CHAR_LENGTH(TRIM(ah.clm_id)) -2)) 
								ELSE ah.clm_id 
							END                       AS clmid,
							CASE 
								WHEN (ah.serv_diag_cd IS NULL OR
								ah.serv_diag_cd LIKE ' %') AND
								(ah.prim_diag_cd IS NULL OR
								ah.prim_diag_cd LIKE ' %') 
								THEN 'No DX' 
								WHEN (ah.serv_diag_cd IS NULL OR
								ah.serv_diag_cd LIKE ' %') AND
								ah.prim_diag_cd IS NOT NULL 
								THEN ah.prim_diag_cd 
								ELSE ah.serv_diag_cd 
							END                       AS diag_cd,
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END                       AS serv_plan_id,
							ahkc.serv_strt_dt,
							ahkc.pd_dt,
							ah.serv_pd_amt,
							ah.disc_cov_amt,
							ah.bill_chrg_amt,
							CASE 
								WHEN ahkc.ipp_cd=1 AND
								ahkc.inpat_ind='Y' 
								THEN 'INPATIENT' 
								WHEN ahkc.ipp_cd =1 AND
								ahkc.inpat_ind='N' 
								THEN 'OUTPATIENT' 
								WHEN ahkc.ipp_cd=2 
								THEN 'PROFESSIONAL' 
								WHEN ahkc.ipp_cd=3 
								THEN 'DRUG' 
								WHEN ahkc.ipp_cd IN (7,
								8,
								9) 
								THEN 'UNKNOWN' 
								ELSE 'OTHER' 
							END                       AS clm_typ,
							CASE ahkc.clm_src_sys_key 
								WHEN 153 
								THEN ah.serv_pd_amt + ahi.surchrg_amt 
								ELSE ah.serv_pd_amt 
							END                       AS pd_amt,
							CASE 
								WHEN ahkc.clm_src_sys_key = 159 
								THEN ah.serv_pd_amt 
								WHEN ah.prov_fin_agrmt_typ_cd = 'C' 
								THEN ah.serv_appr_pay_amt 
								WHEN ahkc.clm_src_sys_key = 153 
								THEN ah.serv_pd_amt + ahi.surchrg_amt 
								ELSE ah.serv_pd_amt 
							END                       AS s_pd_amt 
						FROM
							adj_hcs ah 
							INNER JOIN adj_hcs_ii ahi 
							ON ah.hcs_key = ahi.hcs_key 
							INNER JOIN adj_hcs_key_mbr ahkm 
							ON ah.hcs_key = ahkm.hcs_key 
							INNER JOIN adj_hcs_key_grp ahkg 
							ON ahkm.hcs_key = ahkg.hcs_key AND
							( ('All' IN ('All') OR
							ahkg.pkg_nbr IN ('All')) ) 
							INNER JOIN adj_hcs_key_clm ahkc 
							ON ahkc.hcs_key=ahkm.hcs_key AND
							ahkc.clm_src_sys_key IN (161,
							201) AND
							substr(ahkc.pd_dt,1,6) BETWEEN '200601' AND
							'200612' 
							INNER JOIN (SELECT
											DISTINCT gd.grp_id ,
											gd.subgrp_id,
											gd.grp_div_key ,
											gd.src_sys_key,
											MIN(gd.eff_dt)  AS eff_dt,
											MAX(gd.canc_dt) AS canc_dt 
										FROM
											grp_div gd 
										WHERE
											gd.grp_id IN ('00009835' ,
											'00009836') AND
											gd.src_sys_key IN (167,
											203) 
										GROUP BY
											1,
											2,
											3,
											4 
							)
							GD 
							ON ahkg.grp_div_key = gd.grp_div_key AND
							substr(ahkc.serv_strt_dt ,1,6) BETWEEN '177707' AND
							'209912' 
							LEFT JOIN mbr M 
							ON ahkm.mbr_key = M.mbr_key 
							LEFT JOIN prod_cmpnt pc 
							ON ahkm.prod_cmpnt_key = pc.prod_cmpnt_key 
							LEFT JOIN payrl_emp pe 
							ON ahkm.sub_mbr_key = pe.mbr_key AND
							gd.grp_div_key = pe.grp_div_key AND
							ah.adjud_dt BETWEEN pe.open_dt AND
							pe.clos_dt AND
							ahkm.mbr_src_sys_key IN (153,
							154,
							158) AND
							pe.dept_nbr > ' ' AND
							ahkc.serv_strt_dt BETWEEN pe.eff_dt AND
							pe.canc_dt AND
							'No Segment Selected' <> 'NO SEGMENT SELECTED' 
							LEFT JOIN segm s 
							ON gd.grp_div_key = s.grp_div_key AND
							ahkg.pkg_nbr=s.pkg_nbr AND
							s.clos_dt='20991231' AND
							ahkc.serv_strt_dt BETWEEN s.eff_dt AND
							s.canc_dt AND
							((pe.dept_nbr =s.dept_nbr) OR
							(pe.dept_nbr IS NULL AND
							s.dept_nbr IS NULL) OR
							(pe.dept_nbr IS NULL AND
							s.dept_nbr =' ') ) AND
							((
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END =s.plan_id ) OR
							(
							CASE 
								WHEN ahi.its_plan_id <> ' ' 
								THEN ahi.its_plan_id 
								ELSE ahi.serv_plan_id 
							END IS NULL AND
							s.plan_id IS NULL) ) AND
							'No Segment Selected'::TEXT <> 'NO SEGMENT SELECTED'::TEXT 
					)
					a 
			)
			a 
		WHERE
			a.row_nbr = 1 AND
			a.prod1b IN ('DENTAL' ,
			'DRUG' ,
			'HOTT' ,
			'MEDICAL' ,
			'MEDICARE CARVEOUT' ,
			'MEDICARE HMO' ,
			'MEDICARE SUPP' ,
			'MENTAL HEALTH' ,
			'VISION') AND
			a.prod1 IN ('DRUG') 
	)
	a2 
GROUP BY
	1,
	2,
	3,
	4,
	5,
	6 				
					)
					bb 
				GROUP BY
					1,
					2 
			)
			b 
	)
	L 
GROUP BY
	1,
	2 ;

