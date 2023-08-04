--Regra limite Varejo CPF
drop table if exists liqui_parce_01,liqui_parce_02,liqui_parce_03,liqui_parce_04,liqui_parce_05,liqui_parce_06,liqui_parce_07,liqui_parce_08,liqui_parce_09,
liqui_parce_10,liqui_parce_11,liqui_parce_12,liqui_parce_13,liqui_parce_14,liqui_parce_15,liqui_parce_16,liqui_parce_17,liqui_parce_18,liqui_parce_19,liqui_parce_20,
liqui_parc_rec_01,liqui_parc_rec_02,liqui_parc_rec_03,liqui_parc_rec_04,liqui_parc_rec_05,liqui_parc_rec_06,liqui_parc_rec_07,liqui_parc_rec_08,liqui_outros_01,
liqui_outros_02,liqui_outros_03,liqui_outros_04,liqui_outros_05,liqui_outros_06,liqui_outros_07,liqui_outros_08,liqui_outros_09,liqui_outros_10,liqui_outros_11,
liqui_outros_12,liqui_outros_13,liqui_outros_14,liqui_outros_15,liqui_outros_16,liqui_outros_17,liqui_outros_18,liqui_outros_19,liqui_outros_20,liqui_outros_21,
liqui_outros_rec_01,liqui_outros_rec_02,liqui_outros_rec_03,liqui_outros_rec_04,liqui_outros_rec_05,liqui_outros_rec_06,liqui_outros_rec_07,liqui_outros_rec_08,
qtd_protesto_01,qtd_protesto_02,qtd_protesto_03,qtd_protesto_04,qtd_protesto_05,qtd_protesto_06,qtd_protesto_07,qtd_protesto_08,vl_protesto_01,vl_protesto_02,
vl_protesto_03,vl_protesto_04,vl_protesto_05,vl_protesto_06,vl_protesto_07,vl_protesto_08,vl_protesto_09,vl_protesto_10,recencia_protesto_01,recencia_protesto_02,
recencia_protesto_03,recencia_protesto_04,recencia_protesto_05,recencia_protesto_06,recencia_protesto_07,recencia_protesto_08,recencia_protesto_09,qt_cheques_01,
qt_cheques_02,qt_cheques_03,qt_cheques_04,qt_cheques_05,qt_cheques_06,qt_cheques_07,qt_cheques_08,recencia_cheque_01,recencia_cheque_02,recencia_cheque_03,
recencia_cheque_04,recencia_cheque_05,recencia_cheque_06,recencia_cheque_07,recencia_cheque_08,recencia_cheque_09,qtd_pfin_01,qtd_pfin_02,qtd_pfin_03,qtd_pfin_04,
qtd_pfin_05,qtd_pfin_06,qtd_pfin_07,qtd_pfin_08,recencia_pfin_01,recencia_pfin_02,recencia_pfin_03,recencia_pfin_04,recencia_pfin_05,recencia_pfin_06,recencia_pfin_07,
recencia_pfin_08,vl_pfin_01,vl_pfin_02,vl_pfin_03,vl_pfin_04,vl_pfin_05,vl_pfin_06,vl_pfin_07,vl_pfin_08,vl_pfin_09,vl_pfin_10,vl_desconto_01,
vl_desconto_02,vl_desconto_03,vl_desconto_04,vl_desconto_05,vl_desconto_06,vl_desconto_07,vl_desconto_08,vl_desconto_09,recencia_desconto_01,
recencia_desconto_02,recencia_desconto_03,recencia_desconto_04,recencia_desconto_05,recencia_desconto_06,recencia_desconto_07,recencia_desconto_08,
recencia_desconto_09,recencia_desconto_10,idade_01,idade_02,idade_03,idade_04,idade_05,idade_06,idade_07,idade_08, atraso_maximo_01,atraso_maximo_02,atraso_maximo_03,atraso_maximo_04,atraso_maximo_05,atraso_maximo_06,atraso_maximo_07,atraso_maximo_08,atraso_maximo_09,
atraso_maximo_10,atraso_maximo_11,atraso_maximo_12,atraso_maximo_13,ulti_liqui_atraso_01,ulti_liqui_atraso_02,ulti_liqui_atraso_03,ulti_liqui_atraso_04,
ulti_liqui_atraso_05,ulti_liqui_atraso_06,ulti_liqui_atraso_07,ulti_liqui_atraso_08,ulti_liqui_atraso_09,liqui_atraso_valor_01,liqui_atraso_valor_02,
liqui_atraso_valor_03,liqui_atraso_valor_04,liqui_atraso_valor_05,liqui_atraso_valor_06,liqui_atraso_valor_07,liqui_atraso_valor_08,liqui_atraso_valor_09,
primeira_emissao_01,primeira_emissao_02,primeira_emissao_03,primeira_emissao_04,primeira_emissao_05,primeira_emissao_06,primeira_emissao_07,
franquia_pont01, franquia_pont02,franquia_pont03,franquia_pont04,outros,ulti_liqui_atraso_10;
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Criação de Variaveis xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
select vl_parametro::float into temp table liqui_parce_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_01';
select vl_parametro::float into temp table liqui_parce_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_02';
select vl_parametro::float into temp table liqui_parce_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_03';
select vl_parametro::float into temp table liqui_parce_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_04';
select vl_parametro::float into temp table liqui_parce_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_05';
select vl_parametro::float into temp table liqui_parce_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_06';
select vl_parametro::float into temp table liqui_parce_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_07';
select vl_parametro::float into temp table liqui_parce_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_08';
select vl_parametro::float into temp table liqui_parce_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_09';
select vl_parametro::float into temp table liqui_parce_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_10';
select vl_parametro::float into temp table liqui_parce_11 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_11';
select vl_parametro::float into temp table liqui_parce_12 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_12';
select vl_parametro::float into temp table liqui_parce_13 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_13';
select vl_parametro::float into temp table liqui_parce_14 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_14';
select vl_parametro::float into temp table liqui_parce_15 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_15';
select vl_parametro::float into temp table liqui_parce_16 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_16';
select vl_parametro::float into temp table liqui_parce_17 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_17';
select vl_parametro::float into temp table liqui_parce_18 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_18';
select vl_parametro::float into temp table liqui_parce_19 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_19';
select vl_parametro::float into temp table liqui_parce_20 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parce_20';
select vl_parametro::float into temp table liqui_parc_rec_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_01';
select vl_parametro::float into temp table liqui_parc_rec_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_02';
select vl_parametro::float into temp table liqui_parc_rec_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_03';
select vl_parametro::float into temp table liqui_parc_rec_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_04';
select vl_parametro::float into temp table liqui_parc_rec_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_05';
select vl_parametro::float into temp table liqui_parc_rec_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_06';
select vl_parametro::float into temp table liqui_parc_rec_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_07';
select vl_parametro::float into temp table liqui_parc_rec_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_parc_rec_08';
select vl_parametro::float into temp table liqui_outros_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_01';
select vl_parametro::float into temp table liqui_outros_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_02';
select vl_parametro::float into temp table liqui_outros_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_03';
select vl_parametro::float into temp table liqui_outros_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_04';
select vl_parametro::float into temp table liqui_outros_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_05';
select vl_parametro::float into temp table liqui_outros_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_06';
select vl_parametro::float into temp table liqui_outros_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_07';
select vl_parametro::float into temp table liqui_outros_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_08';
select vl_parametro::float into temp table liqui_outros_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_09';
select vl_parametro::float into temp table liqui_outros_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_10';
select vl_parametro::float into temp table liqui_outros_11 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_11';
select vl_parametro::float into temp table liqui_outros_12 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_12';
select vl_parametro::float into temp table liqui_outros_13 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_13';
select vl_parametro::float into temp table liqui_outros_14 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_14';
select vl_parametro::float into temp table liqui_outros_15 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_15';
select vl_parametro::float into temp table liqui_outros_16 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_16';
select vl_parametro::float into temp table liqui_outros_17 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_17';
select vl_parametro::float into temp table liqui_outros_18 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_18';
select vl_parametro::float into temp table liqui_outros_19 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_19';
select vl_parametro::float into temp table liqui_outros_20 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_20';
select vl_parametro::float into temp table liqui_outros_21 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_21';
select vl_parametro::float into temp table liqui_outros_rec_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_01';
select vl_parametro::float into temp table liqui_outros_rec_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_02';
select vl_parametro::float into temp table liqui_outros_rec_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_03';
select vl_parametro::float into temp table liqui_outros_rec_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_04';
select vl_parametro::float into temp table liqui_outros_rec_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_05';
select vl_parametro::float into temp table liqui_outros_rec_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_06';
select vl_parametro::float into temp table liqui_outros_rec_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_07';
select vl_parametro::float into temp table liqui_outros_rec_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_outros_rec_08';
select vl_parametro::float into temp table qtd_protesto_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_01';
select vl_parametro::float into temp table qtd_protesto_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_02';
select vl_parametro::float into temp table qtd_protesto_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_03';
select vl_parametro::float into temp table qtd_protesto_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_04';
select vl_parametro::float into temp table qtd_protesto_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_05';
select vl_parametro::float into temp table qtd_protesto_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_06';
select vl_parametro::float into temp table qtd_protesto_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_07';
select vl_parametro::float into temp table qtd_protesto_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_protesto_08';
select vl_parametro::float into temp table ulti_liqui_atraso_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_10';
select vl_parametro::float into temp table vl_protesto_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_01';
select vl_parametro::float into temp table vl_protesto_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_02';
select vl_parametro::float into temp table vl_protesto_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_03';
select vl_parametro::float into temp table vl_protesto_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_04';
select vl_parametro::float into temp table vl_protesto_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_05';
select vl_parametro::float into temp table vl_protesto_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_06';
select vl_parametro::float into temp table vl_protesto_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_07';
select vl_parametro::float into temp table vl_protesto_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_08';
select vl_parametro::float into temp table vl_protesto_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_09';
select vl_parametro::float into temp table vl_protesto_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_protesto_10';
select vl_parametro::float into temp table recencia_protesto_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_01';
select vl_parametro::float into temp table recencia_protesto_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_02';
select vl_parametro::float into temp table recencia_protesto_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_03';
select vl_parametro::float into temp table recencia_protesto_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_04';
select vl_parametro::float into temp table recencia_protesto_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_05';
select vl_parametro::float into temp table recencia_protesto_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_06';
select vl_parametro::float into temp table recencia_protesto_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_07';
select vl_parametro::float into temp table recencia_protesto_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_08';
select vl_parametro::float into temp table recencia_protesto_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_protesto_09';
select vl_parametro::float into temp table qt_cheques_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_01';
select vl_parametro::float into temp table qt_cheques_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_02';
select vl_parametro::float into temp table qt_cheques_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_03';
select vl_parametro::float into temp table qt_cheques_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_04';
select vl_parametro::float into temp table qt_cheques_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_05';
select vl_parametro::float into temp table qt_cheques_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_06';
select vl_parametro::float into temp table qt_cheques_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_07';
select vl_parametro::float into temp table qt_cheques_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qt_cheques_08';
select vl_parametro::float into temp table recencia_cheque_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_01';
select vl_parametro::float into temp table recencia_cheque_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_02';
select vl_parametro::float into temp table recencia_cheque_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_03';
select vl_parametro::float into temp table recencia_cheque_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_04';
select vl_parametro::float into temp table recencia_cheque_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_05';
select vl_parametro::float into temp table recencia_cheque_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_06';
select vl_parametro::float into temp table recencia_cheque_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_07';
select vl_parametro::float into temp table recencia_cheque_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_08';
select vl_parametro::float into temp table recencia_cheque_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_cheque_09';
select vl_parametro::float into temp table qtd_pfin_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_01';
select vl_parametro::float into temp table qtd_pfin_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_02';
select vl_parametro::float into temp table qtd_pfin_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_03';
select vl_parametro::float into temp table qtd_pfin_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_04';
select vl_parametro::float into temp table qtd_pfin_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_05';
select vl_parametro::float into temp table qtd_pfin_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_06';
select vl_parametro::float into temp table qtd_pfin_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_07';
select vl_parametro::float into temp table qtd_pfin_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'qtd_pfin_08';
select vl_parametro::float into temp table recencia_pfin_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_01';
select vl_parametro::float into temp table recencia_pfin_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_02';
select vl_parametro::float into temp table recencia_pfin_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_03';
select vl_parametro::float into temp table recencia_pfin_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_04';
select vl_parametro::float into temp table recencia_pfin_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_05';
select vl_parametro::float into temp table recencia_pfin_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_06';
select vl_parametro::float into temp table recencia_pfin_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_07';
select vl_parametro::float into temp table recencia_pfin_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_pfin_08';
select vl_parametro::float into temp table vl_pfin_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_01';
select vl_parametro::float into temp table vl_pfin_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_02';
select vl_parametro::float into temp table vl_pfin_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_03';
select vl_parametro::float into temp table vl_pfin_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_04';
select vl_parametro::float into temp table vl_pfin_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_05';
select vl_parametro::float into temp table vl_pfin_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_06';
select vl_parametro::float into temp table vl_pfin_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_07';
select vl_parametro::float into temp table vl_pfin_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_08';
select vl_parametro::float into temp table vl_pfin_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_09';
select vl_parametro::float into temp table vl_pfin_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_pfin_10';
select vl_parametro::float into temp table vl_desconto_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_01';
select vl_parametro::float into temp table vl_desconto_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_02';
select vl_parametro::float into temp table vl_desconto_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_03';
select vl_parametro::float into temp table vl_desconto_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_04';
select vl_parametro::float into temp table vl_desconto_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_05';
select vl_parametro::float into temp table vl_desconto_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_06';
select vl_parametro::float into temp table vl_desconto_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_07';
select vl_parametro::float into temp table vl_desconto_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_08';
select vl_parametro::float into temp table vl_desconto_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'vl_desconto_09';
select vl_parametro::float into temp table recencia_desconto_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_01';
select vl_parametro::float into temp table recencia_desconto_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_02';
select vl_parametro::float into temp table recencia_desconto_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_03';
select vl_parametro::float into temp table recencia_desconto_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_04';
select vl_parametro::float into temp table recencia_desconto_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_05';
select vl_parametro::float into temp table recencia_desconto_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_06';
select vl_parametro::float into temp table recencia_desconto_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_07';
select vl_parametro::float into temp table recencia_desconto_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_08';
select vl_parametro::float into temp table recencia_desconto_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_09';
select vl_parametro::float into temp table recencia_desconto_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'recencia_desconto_10';
select vl_parametro::float into temp table idade_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_01';
select vl_parametro::float into temp table idade_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_02';
select vl_parametro::float into temp table idade_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_03';
select vl_parametro::float into temp table idade_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_04';
select vl_parametro::float into temp table idade_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_05';
select vl_parametro::float into temp table idade_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_06';
select vl_parametro::float into temp table idade_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_07';
select vl_parametro::float into temp table idade_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'idade_08';
select vl_parametro::float into temp table atraso_maximo_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_01';
select vl_parametro::float into temp table atraso_maximo_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_02';
select vl_parametro::float into temp table atraso_maximo_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_03';
select vl_parametro::float into temp table atraso_maximo_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_04';
select vl_parametro::float into temp table atraso_maximo_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_05';
select vl_parametro::float into temp table atraso_maximo_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_06';
select vl_parametro::float into temp table atraso_maximo_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_07';
select vl_parametro::float into temp table atraso_maximo_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_08';
select vl_parametro::float into temp table atraso_maximo_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_09';
select vl_parametro::float into temp table atraso_maximo_10 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_10';
select vl_parametro::float into temp table atraso_maximo_11 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_11';
select vl_parametro::float into temp table atraso_maximo_12 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_12';
select vl_parametro::float into temp table atraso_maximo_13 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'atraso_maximo_13';
select vl_parametro::float into temp table ulti_liqui_atraso_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_01';
select vl_parametro::float into temp table ulti_liqui_atraso_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_02';
select vl_parametro::float into temp table ulti_liqui_atraso_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_03';
select vl_parametro::float into temp table ulti_liqui_atraso_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_04';
select vl_parametro::float into temp table ulti_liqui_atraso_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_05';
select vl_parametro::float into temp table ulti_liqui_atraso_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_06';
select vl_parametro::float into temp table ulti_liqui_atraso_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_07';
select vl_parametro::float into temp table ulti_liqui_atraso_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_08';
select vl_parametro::float into temp table ulti_liqui_atraso_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'ulti_liqui_atraso_09';
select vl_parametro::float into temp table liqui_atraso_valor_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_01';
select vl_parametro::float into temp table liqui_atraso_valor_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_02';
select vl_parametro::float into temp table liqui_atraso_valor_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_03';
select vl_parametro::float into temp table liqui_atraso_valor_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_04';
select vl_parametro::float into temp table liqui_atraso_valor_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_05';
select vl_parametro::float into temp table liqui_atraso_valor_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_06';
select vl_parametro::float into temp table liqui_atraso_valor_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_07';
select vl_parametro::float into temp table liqui_atraso_valor_08 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_08';
select vl_parametro::float into temp table liqui_atraso_valor_09 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'liqui_atraso_valor_09';
select vl_parametro::float into temp table primeira_emissao_01 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_01';
select vl_parametro::float into temp table primeira_emissao_02 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_02';
select vl_parametro::float into temp table primeira_emissao_03 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_03';
select vl_parametro::float into temp table primeira_emissao_04 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_04';
select vl_parametro::float into temp table primeira_emissao_05 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_05';
select vl_parametro::float into temp table primeira_emissao_06 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_06';
select vl_parametro::float into temp table primeira_emissao_07 from sbox__financeiro.parametro_cliente_limite_credito where nm_parametro = 'primeira_emissao_07';

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Clientes xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists liquidado_pessoa_ds2;
select
		dscc.nu_cpf_cnpj,
		id_estudante as id_estudante_ds,
		cd_area_profissional as cd_area_profissional_ds,
		max(dt_emissao::date) as dt_emissao_ds,
		max(dt_liquidacao::date) as dt_liquidacao_ds --
		into temp table liquidado_pessoa_ds2
from
		speedy_ds.rcb_titulo dsrt
left join (
	select
		nu_cpf_cnpj,
		cd_cliente,
		nm_cliente,
		id_sexo,
		cd_area_profissional,
		id_estudante
	from
		restricted.speedy_ds__cad_cliente) as dscc on
		dsrt.cd_cliente = dscc.cd_cliente
where
		(dsrt.dt_emissao::date between now() - interval '18 months' and now() or 
dsrt.dt_liquidacao::date between now() - interval '18 months' and now())
	and ID_COBRANCA in ('0', '26')
	--and cd_area_profissional = '3'
	--and id_estudante = '1'
	and nu_cpf_cnpj != '  .   .   /    -  '
	and nu_cpf_cnpj != ' . .   - '
	and nu_cpf_cnpj != '   .   .   -  '
	and nu_cpf_cnpj != '   .   .   - '
	and nu_cpf_cnpj != '  .   .       - '
	and nu_cpf_cnpj != '  .   .   /    - '
	and nm_cliente not ilike 'TESTE%%'
group by
	1,2,3;

create index if not exists idx__liquidado_pessoa_ds2 on
liquidado_pessoa_ds2 (nu_cpf_cnpj);

drop table if exists liquidado_pessoa_dc;

select
		dccc.nu_cpf_cnpj,
		id_estudante as id_estudante_dc,
		cd_area_profissional as cd_area_profissional_dc,
		max(dt_emissao::date) as dt_emissao_dc,
		max(dt_liquidacao::date) as dt_liquidacao_dc --
		into temp table liquidado_pessoa_dc
from
		speedy_dc.rcb_titulo dcrt
left join (
	select
		nu_cpf_cnpj,
		cd_cliente,
		nm_cliente,
		id_sexo,
		cd_area_profissional,
		id_estudante
	from
		restricted.speedy_dc__cad_cliente) as dccc on
		dcrt.cd_cliente = dccc.cd_cliente
where
(dcrt.dt_emissao::date between now() - interval '18 months' and now() or 
dcrt.dt_liquidacao::date between now() - interval '18 months' and now())
	and ID_COBRANCA in ('0', '26')
	--and cd_area_profissional = '3'
	--and id_estudante = '1'
	and nu_cpf_cnpj != '  .   .   /    -  '
	and nu_cpf_cnpj != ' . .   - '
	and nu_cpf_cnpj != '   .   .   -  '
	and nu_cpf_cnpj != '   .   .   - '
	and nu_cpf_cnpj != '  .   .       - '
	and nu_cpf_cnpj != '  .   .   /    - '
	and nm_cliente not ilike 'TESTE%%'
group by
	1,2,3;

create index if not exists idx__liquidado_pessoa_dc on
liquidado_pessoa_dc (nu_cpf_cnpj);

drop table if exists cliente;

select
	distinct nu_cpf_cnpj
	into temp table cliente
from
	(
	select
		nu_cpf_cnpj,
		cd_cliente,
		nm_cliente,
		id_estudante,
		cd_area_profissional,
		id_sexo
	from
		restricted.speedy_dc__cad_cliente dccc
	where
		--id_estudante = '1'
		nu_cpf_cnpj != '  .   .   /    -  '
		and nu_cpf_cnpj != ' . .   - '
		and nu_cpf_cnpj != '   .   .   -  '
		and nu_cpf_cnpj != '   .   .   - '
		and nu_cpf_cnpj != '  .   .       - '
		and nu_cpf_cnpj != '  .   .   /    - '
		and nm_cliente not ilike 'TESTE%%'
union all
	select
		nu_cpf_cnpj,
		cd_cliente,		
		nm_cliente,
		id_estudante,
		cd_area_profissional,
		id_sexo
	from
		restricted.speedy_ds__cad_cliente dscc
	where
		--id_estudante = '1'
		nu_cpf_cnpj != '  .   .   /    -  '
		and nu_cpf_cnpj != ' . .   - '
		and nu_cpf_cnpj != '   .   .   -  '
		and nu_cpf_cnpj != '   .   .   - '
		and nu_cpf_cnpj != '  .   .       - '
		and nu_cpf_cnpj != '  .   .   /    - '
		and nm_cliente not ilike 'TESTE%%') total
order by
	1;

drop table if exists clientes_final;
select
	distinct cliente.nu_cpf_cnpj,
	liquidado_pessoa_ds2.dt_emissao_ds,
	liquidado_pessoa_ds2.dt_liquidacao_ds,
	liquidado_pessoa_dc.dt_liquidacao_dc,
	liquidado_pessoa_dc.dt_emissao_dc,
	id_estudante_ds,
	id_estudante_dc,
	case 
		when liquidado_pessoa_ds2.dt_emissao_ds > liquidado_pessoa_dc.dt_emissao_dc or --
		liquidado_pessoa_ds2.dt_liquidacao_ds > liquidado_pessoa_dc.dt_liquidacao_dc
		or cd_area_profissional_dc is null then cd_area_profissional_ds
		when liquidado_pessoa_dc.dt_emissao_dc >= liquidado_pessoa_ds2.dt_emissao_ds or --
		liquidado_pessoa_dc.dt_liquidacao_dc >= liquidado_pessoa_ds2.dt_liquidacao_ds
		or cd_area_profissional_ds is null then cd_area_profissional_dc
		else ''
	end as cd_area_profissional_validacao,
	case 
		when liquidado_pessoa_ds2.dt_emissao_ds > liquidado_pessoa_dc.dt_emissao_dc or --
		liquidado_pessoa_ds2.dt_liquidacao_ds > liquidado_pessoa_dc.dt_liquidacao_dc
		or id_estudante_dc is null then id_estudante_ds
		when liquidado_pessoa_dc.dt_emissao_dc >= liquidado_pessoa_ds2.dt_emissao_ds or --
		liquidado_pessoa_dc.dt_liquidacao_dc >= liquidado_pessoa_ds2.dt_liquidacao_ds
		or id_estudante_ds is null then id_estudante_dc
		else ''
	end as estudante_validacao
	into
	temp table clientes_final
from
	cliente
left join liquidado_pessoa_ds2 on
	cliente.nu_cpf_cnpj = liquidado_pessoa_ds2.nu_cpf_cnpj
left join liquidado_pessoa_dc on
	cliente.nu_cpf_cnpj = liquidado_pessoa_dc.nu_cpf_cnpj;

create index if not exists idx__clientes_final on
clientes_final (nu_cpf_cnpj);


--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists clientes;
select
	distinct nu_cpf_cnpj
	into
	temp table clientes
from
	clientes_final
where
	estudante_validacao in ('0', '2')
	and cd_area_profissional_validacao in ('3', '14', '30', '31')
		and estudante_validacao is not null;
---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Liquidado Parcelado Ultimos 18 Meses xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontuacao_liquidado_boleto;
select
		nu_cpf_cnpj,
		sum(vl_liquidacao::float8) liquidado
		into temp table pontuacao_liquidado_boleto
from
		(
	select
			dsscc.nu_cpf_cnpj,
		case 
			when dsrt.dt_liquidacao is null
			and id_ativo in ('1', '2', '3')
			and dsrt.dt_emissao::date >= '2020-05-01' then dsrtl.dt_liquidacao
			else dsrt.dt_liquidacao
		end as dt_liquidacao,
			dsrt.vl_liquidacao
	from
			clientes dsscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_ds__cad_cliente) dscc  
			on
		dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao,
			ID_liquidacao,
			nu_titulo,
			nu_parcela,
			cd_empresa,
			id_ativo,
			dt_emissao
		from
			speedy_ds.rcb_titulo) dsrt
			on
		dsrt.cd_cliente = dscc.cd_cliente
		left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_ds.rcb_titulo_liquidacao) dsrtl on
		dsrt.nu_titulo = dsrtl.nu_titulo
	and dsrt.nu_parcela = dsrtl.nu_parcela
	and dsrt.cd_empresa = dsrtl.cd_empresa
	where
		(dsrt.dt_liquidacao::date between now() - interval'18 months' and now() or dsrtl.dt_liquidacao::date between now() - interval'18 months' and now())
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
union all
	select
			dcscc.nu_cpf_cnpj,
		case 
			when dcrt.dt_liquidacao is null
			and id_ativo in ('1', '2', '3')
			and dcrt.dt_emissao::date >= '2020-05-01' then dcrtl.dt_liquidacao
			else dcrt.dt_liquidacao
		end as dt_liquidacao,
			dcrt.vl_liquidacao
	from
			clientes dcscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_dc__cad_cliente) dccc  
			on
		dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao,
			ID_liquidacao,
			nu_titulo,
			nu_parcela,
			cd_empresa,
			id_ativo,
			dt_emissao
		from
			speedy_dc.rcb_titulo) dcrt
			on
		dcrt.cd_cliente = dccc.cd_cliente
		left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_dc.rcb_titulo_liquidacao) dcrtl on
		dcrt.nu_titulo = dcrtl.nu_titulo
	and dcrt.nu_parcela = dcrtl.nu_parcela
	and dcrt.cd_empresa = dcrtl.cd_empresa
	where
		(dcrt.dt_liquidacao::date between now() - interval'18 months' and now() or dcrtl.dt_liquidacao::date between now() - interval'18 months' and now())
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
		) total
group by
		1;
	

create index if not exists idx__pontuacao_liquidado_boleto on
pontuacao_liquidado_boleto (nu_cpf_cnpj);


--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists liquidadoparcelado_baselimite;	

select
	nu_cpf_cnpj,
	round(liquidado::numeric, 2) as liquidado_parcelado,
	case 
		when liquidado::float8 < 600 then (select * from liqui_parce_01)
		when liquidado::float8 < 1600 then (select * from liqui_parce_02)
		when liquidado::float8 < 3200 then (select * from liqui_parce_03)
		when liquidado::float8 < 5800 then (select * from liqui_parce_04)
		when liquidado::float8 < 10000 then (select * from liqui_parce_05)
		when liquidado::float8 < 16000 then (select * from liqui_parce_06)
		when liquidado::float8 < 28000 then (select * from liqui_parce_07)
		when liquidado::float8 < 40000 then (select * from liqui_parce_08)
		when liquidado::float8 < 50000 then (select * from liqui_parce_09)
		when liquidado::float8 < 60000 then (select * from liqui_parce_10)
		when liquidado::float8 < 70000 then (select * from liqui_parce_11)
		when liquidado::float8 < 80000 then (select * from liqui_parce_12)
		when liquidado::float8 < 90000 then (select * from liqui_parce_13)
		when liquidado::float8 < 100000 then (select * from liqui_parce_14)
		when liquidado::float8 < 110000 then (select * from liqui_parce_15)
		when liquidado::float8 < 120000 then (select * from liqui_parce_16)
		when liquidado::float8 < 130000 then (select * from liqui_parce_17)
		when liquidado::float8 < 140000 then (select * from liqui_parce_18)
		when liquidado::float8 < 150000 then (select * from liqui_parce_19)
		else (select * from liqui_parce_20)
	end as pontuacao_liquidado_parcelado,
	liquidado::float8 * 0.3 as percentual_liquidado	
	into temp table liquidadoparcelado_baselimite
from
	pontuacao_liquidado_boleto;
create index if not exists idx__liquidadoparcelado_baselimite on liquidadoparcelado_baselimite (nu_cpf_cnpj);	
---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Recencia Liquidado Parcelado Ultimos 18 Meses xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontuacao_recencia_liquidado_boleto; 
select
	nu_cpf_cnpj,
	now()::date - dt_liquidacao::date as liquidado_recencia
	into temp pontuacao_recencia_liquidado_boleto
from
	(
	select
		nu_cpf_cnpj,
		max(dt_liquidacao::date) dt_liquidacao
	from
		(
	select
				dsscc.nu_cpf_cnpj,
				MAX(CASE
        WHEN dsrt.dt_liquidacao IS NULL
            AND dsrt.id_ativo IN ('1', '2', '3')
            AND dsrt.dt_emissao::date >= '2020-05-01' THEN dsrtl.dt_liquidacao
        ELSE dsrt.dt_liquidacao
    END) AS dt_liquidacao
			from
			clientes dsscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_ds__cad_cliente) dscc  
			on
		dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao,
			ID_liquidacao,
			nu_titulo,
			nu_parcela,
			cd_empresa,
			id_ativo,
			dt_emissao
		from
			speedy_ds.rcb_titulo) dsrt
			on
		dsrt.cd_cliente = dscc.cd_cliente
		left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_ds.rcb_titulo_liquidacao) dsrtl on
		dsrt.nu_titulo = dsrtl.nu_titulo
	and dsrt.nu_parcela = dsrtl.nu_parcela
	and dsrt.cd_empresa = dsrtl.cd_empresa
	where
		(dsrt.dt_liquidacao::date between now() - interval'18 months' and now() or dsrtl.dt_liquidacao::date between now() - interval'18 months' and now())
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
					--and dt_vencimento::date < dt_liquidacao::date
				group by
					1
		union all
			select
				dcscc.nu_cpf_cnpj,
				MAX(CASE
        WHEN dcrt.dt_liquidacao IS NULL
            AND dcrt.id_ativo IN ('1', '2', '3')
            AND dcrt.dt_emissao::date >= '2020-05-01' THEN dcrtl.dt_liquidacao
        ELSE dcrt.dt_liquidacao
    END) AS dt_liquidacao
			from
			clientes dcscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_dc__cad_cliente) dccc  
			on
		dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao,
			ID_liquidacao,
			nu_titulo,
			nu_parcela,
			cd_empresa,
			id_ativo,
			dt_emissao
		from
			speedy_dc.rcb_titulo) dcrt
			on
		dcrt.cd_cliente = dccc.cd_cliente
		left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_dc.rcb_titulo_liquidacao) dcrtl on
		dcrt.nu_titulo = dcrtl.nu_titulo
	and dcrt.nu_parcela = dcrtl.nu_parcela
	and dcrt.cd_empresa = dcrtl.cd_empresa
	where
		(dcrt.dt_liquidacao::date between now() - interval'18 months' and now() or dcrtl.dt_liquidacao::date between now() - interval'18 months' and now())
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
					--and dt_vencimento::date < dt_liquidacao::date
				group by
					1) total
	group by
		1) geral;
create index if not exists idx__pontuacao_recencia_liquidado_boleto on pontuacao_recencia_liquidado_boleto (nu_cpf_cnpj);		



--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pontuacao_liquidacao;	

		select
	nu_cpf_cnpj,
	liquidado_recencia,
	case 
		when liquidado_recencia < 30 then (select * from liqui_parc_rec_01)
		when liquidado_recencia < 60 then (select * from liqui_parc_rec_02)
		when liquidado_recencia < 180 then (select * from liqui_parc_rec_03)
		when liquidado_recencia < 270 then (select * from liqui_parc_rec_04)
		when liquidado_recencia < 360 then (select * from liqui_parc_rec_05)
		when liquidado_recencia < 428 then (select * from liqui_parc_rec_06)
		when liquidado_recencia < 540 then (select * from liqui_parc_rec_07)
		else (select * from liqui_parc_rec_08)
	end as pontuacao_recencia_liquidado_parcelado
	into temp table pontuacao_liquidacao
from
	pontuacao_recencia_liquidado_boleto;
create index if not exists idx__pontuacao_liquidacao on pontuacao_liquidacao (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Pontuação Liquidado 18 Meses com Score xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists final_liquidacao_parcelado;	

select
	liquidadoparcelado_baselimite.nu_cpf_cnpj,
	liquidadoparcelado_baselimite.liquidado_parcelado,
	liquidadoparcelado_baselimite.pontuacao_liquidado_parcelado,
	pontuacao_liquidacao.liquidado_recencia,
	pontuacao_liquidacao.pontuacao_recencia_liquidado_parcelado,
	(liquidadoparcelado_baselimite.pontuacao_liquidado_parcelado + pontuacao_liquidacao.pontuacao_recencia_liquidado_parcelado) as Score_liquidacao
	into temp table final_liquidacao_parcelado
from
	liquidadoparcelado_baselimite
left join pontuacao_liquidacao on
	liquidadoparcelado_baselimite.nu_cpf_cnpj = pontuacao_liquidacao.nu_cpf_cnpj;
create index if not exists idx__final_liquidacao_parcelado on final_liquidacao_parcelado (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Liquidado Outras Formas de Pagamento xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
/*
	 * 1 - CARTÃO DE CRÉDITO
	 * 4 - DEPÓSITO
	 * 7 - BOLETO ANTECIPADO
	 * 19 - CARTÃO DE DÉBITO
	 * 47 - CARTÃO DE DÉBITO MAQUINETA
	 * 49 - CARTÃO DE CRÉDITO MAQUINETA
	 * 53 - CARTÃO DE DÉBITO BRASPAG
	 * 54 - CARTÃO DE CRÉDITO BRASPAG
	 * 56 - BOLETO ANTECIPADO BRASPAG
	 * 57 - CARTÃO DE DÉBITO PAGONLINE
	 * 58 - CARTÃO DE CRÉDITO PAGONLINE
	 * 59 - BOLETO ANTECIPADO PAGONLINE
	 * */ 
drop table if exists liquidado_outras_formas_pagamento;
select
	nu_cpf_cnpj,
	sum (vl_liquidacao::float8) liquidado_outras_formas_pg
	into
	temp table liquidado_outras_formas_pagamento
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dsrt.vl_liquidacao
	from
		final_liquidacao_parcelado dsscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_ds__cad_cliente) dscc  
			on
		dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao
		from
			speedy_ds.rcb_titulo) dsrt
			on
		dsrt.cd_cliente = dscc.cd_cliente
	where
		dsrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
		and dsrt.vl_liquidacao::float8>0
		--and dt_vencimento::date < dt_liquidacao::date
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dcrt.vl_liquidacao
	from
		final_liquidacao_parcelado dcscc
	left join (
		select
			nu_cpf_cnpj,
			cd_cliente
		from
			restricted.speedy_dc__cad_cliente) dccc  
			on
		dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (
		select
			dt_liquidacao,
			ID_COBRANCA,
			cd_cliente,
			vl_liquidacao
		from
			speedy_dc.rcb_titulo) dcrt
			on
		dcrt.cd_cliente = dccc.cd_cliente
	where
		dcrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
		and dcrt.vl_liquidacao::float8>0
		--and dt_vencimento::date < dt_liquidacao::date
	) total
group by
	1;

create index if not exists idx__liquidado_outras_formas_pagamento on liquidado_outras_formas_pagamento (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pontuacao_liquidado_outras_formas_pg;

select
	nu_cpf_cnpj,
	round(liquidado_outras_formas_pg::numeric, 2) as liquidado_outras_formas_pg,
	case 
		when liquidado_outras_formas_pg::float8 is null then (select * from liqui_outros_01)
		when liquidado_outras_formas_pg::float8 < 600 then (select * from liqui_outros_02)
		when liquidado_outras_formas_pg::float8 < 1600 then (select * from liqui_outros_03)
		when liquidado_outras_formas_pg::float8 < 3200 then (select * from liqui_outros_04)
		when liquidado_outras_formas_pg::float8 < 5800 then (select * from liqui_outros_05)
		when liquidado_outras_formas_pg::float8 < 10000 then (select * from liqui_outros_06)
		when liquidado_outras_formas_pg::float8 < 16000 then (select * from liqui_outros_07)
		when liquidado_outras_formas_pg::float8 < 28000 then (select * from liqui_outros_08)
		when liquidado_outras_formas_pg::float8 < 40000 then (select * from liqui_outros_09)
		when liquidado_outras_formas_pg::float8 < 50000 then (select * from liqui_outros_10)
		when liquidado_outras_formas_pg::float8 < 60000 then (select * from liqui_outros_11)
		when liquidado_outras_formas_pg::float8 < 70000 then (select * from liqui_outros_12)
		when liquidado_outras_formas_pg::float8 < 80000 then (select * from liqui_outros_13)
		when liquidado_outras_formas_pg::float8 < 90000 then (select * from liqui_outros_14)
		when liquidado_outras_formas_pg::float8 < 100000 then (select * from liqui_outros_15)
		when liquidado_outras_formas_pg::float8 < 110000 then (select * from liqui_outros_16)
		when liquidado_outras_formas_pg::float8 < 120000 then (select * from liqui_outros_17)
		when liquidado_outras_formas_pg::float8 < 130000 then (select * from liqui_outros_18)
		when liquidado_outras_formas_pg::float8 < 140000 then (select * from liqui_outros_19)
		when liquidado_outras_formas_pg::float8 < 150000 then (select * from liqui_outros_20)
		else (select * from liqui_outros_21)
	end as pontuacao_liqui_outras_formas_pg
	into temp table pontuacao_liquidado_outras_formas_pg
from
	liquidado_outras_formas_pagamento;
create index if not exists idx__pontuacao_liquidado_outras_formas_pg on pontuacao_liquidado_outras_formas_pg (nu_cpf_cnpj);		
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Recencia Liquidado Outras Formas de Pagamento xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

/*
	 * 1 - CARTÃO DE CRÉDITO
	 * 4 - DEPÓSITO
	 * 7 - BOLETO ANTECIPADO
	 * 19 - CARTÃO DE DÉBITO
	 * 47 - CARTÃO DE DÉBITO MAQUINETA
	 * 49 - CARTÃO DE CRÉDITO MAQUINETA
	 * 53 - CARTÃO DE DÉBITO BRASPAG
	 * 54 - CARTÃO DE CRÉDITO BRASPAG
	 * 56 - BOLETO ANTECIPADO BRASPAG
	 * 57 - CARTÃO DE DÉBITO PAGONLINE
	 * 58 - CARTÃO DE CRÉDITO PAGONLINE
	 * 59 - BOLETO ANTECIPADO PAGONLINE
	 * */ 
drop table if exists liquidado_outras_formas_recencia;
select
	nu_cpf_cnpj,
	now()::date - dt_liquidacao::date as liquidado_outras_formas_recencia
	into temp table liquidado_outras_formas_recencia
from
	(
	select
		nu_cpf_cnpj,
		max(dt_liquidacao::date) dt_liquidacao
	from
		(
		select
			dssc.nu_cpf_cnpj,
			max(dt_liquidacao::date) dt_liquidacao
		from
			final_liquidacao_parcelado dssc
		left join restricted.speedy_ds__cad_cliente dscc on 
			dssc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
		left join speedy_ds.rcb_titulo dsrt on
			dsrt.cd_cliente = dscc.cd_cliente
		where
			dsrt.dt_liquidacao::date between now() - interval'18 months' and now()
			and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
			and dsrt.vl_liquidacao::float8>0
			--and dt_vencimento::date < dt_liquidacao::date
		group by
			1
	union all
		select
			dssc.nu_cpf_cnpj,
			max(dt_liquidacao::date) dt_liquidacao
		from
			final_liquidacao_parcelado dssc
		left join restricted.speedy_dc__cad_cliente dscc on 
			dssc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
		left join speedy_dc.rcb_titulo dsrt on
			dsrt.cd_cliente = dscc.cd_cliente
		where
			dsrt.dt_liquidacao::date between now() - interval'18 months' and now()
			and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
			and dsrt.vl_liquidacao::float8 > 0
			--and dt_vencimento::date < dt_liquidacao::date
		group by
			1) total
	group by
		1) geral;
create index if not exists idx__liquidado_outras_formas_recencia on liquidado_outras_formas_recencia (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pontuacao_recencia_liquidado_outras_formas;
select
		nu_cpf_cnpj,
		liquidado_outras_formas_recencia,
		case
		when liquidado_outras_formas_recencia is null then (select * from liqui_outros_rec_01)	
		when liquidado_outras_formas_recencia < 30 then (select * from liqui_outros_rec_02)	
		when liquidado_outras_formas_recencia < 60 then (select * from liqui_outros_rec_03)	
		when liquidado_outras_formas_recencia < 180 then (select * from liqui_outros_rec_04)	
		when liquidado_outras_formas_recencia < 270 then (select * from liqui_outros_rec_05)	
		when liquidado_outras_formas_recencia < 428 then (select * from liqui_outros_rec_06)	
		when liquidado_outras_formas_recencia < 540 then (select * from liqui_outros_rec_07)	
		else (select * from liqui_outros_rec_08)	
	end as pontuacao_recencia_liquidado_outras_formas
	into temp table pontuacao_recencia_liquidado_outras_formas
	from liquidado_outras_formas_recencia;
create index if not exists idx__pontuacao_recencia_liquidado_outras_formas on pontuacao_recencia_liquidado_outras_formas (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Pontuação Outras Formas de Pagamento com Score xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists final_liquidacao_outras_formas;

select
	pontuacao_liquidado_outras_formas_pg.nu_cpf_cnpj,
	pontuacao_liquidado_outras_formas_pg.liquidado_outras_formas_pg,
	pontuacao_liquidado_outras_formas_pg.pontuacao_liqui_outras_formas_pg,
	pontuacao_recencia_liquidado_outras_formas.liquidado_outras_formas_recencia,
	pontuacao_recencia_liquidado_outras_formas.pontuacao_recencia_liquidado_outras_formas,
	(pontuacao_liquidado_outras_formas_pg.pontuacao_liqui_outras_formas_pg + pontuacao_recencia_liquidado_outras_formas.pontuacao_recencia_liquidado_outras_formas) Score_Outras_Formas_de_Pg
	into temp table final_liquidacao_outras_formas
from
	pontuacao_liquidado_outras_formas_pg
left join pontuacao_recencia_liquidado_outras_formas on
	pontuacao_liquidado_outras_formas_pg.nu_cpf_cnpj = pontuacao_recencia_liquidado_outras_formas.nu_cpf_cnpj;
create index if not exists idx__final_liquidacao_outras_formas on final_liquidacao_outras_formas (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação Bases de Liquidados 18 meses e Outras formas de Pagamento xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists base_unificada1;	

select
	final_liquidacao_parcelado.*,
	final_liquidacao_outras_formas.liquidado_outras_formas_pg,
	final_liquidacao_outras_formas.pontuacao_liqui_outras_formas_pg,
	final_liquidacao_outras_formas.liquidado_outras_formas_recencia,
	final_liquidacao_outras_formas.pontuacao_recencia_liquidado_outras_formas,
	final_liquidacao_outras_formas.score_outras_formas_de_pg
	into temp table base_unificada1
from
	final_liquidacao_parcelado
left join final_liquidacao_outras_formas on
	final_liquidacao_parcelado.nu_cpf_cnpj = final_liquidacao_outras_formas.nu_cpf_cnpj;
create index if not exists idx__base_unificada1 on base_unificada1 (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Base Completa Protesto xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

--to_date(right(dt_cheque_mais_recente, 4) ||'-' || substring(dt_cheque_mais_recente, 4, 2) ||'-' || left(dt_cheque_mais_recente, 2),'yyyy-mm-dd') as dt_cheque_mais_recente,

--xxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists protesto5;	
select
	nu_cpf_cnpj,
	dt_protesto_mais_recente,
	qt_protestos::int,
	vl_total_protestos::float8,
	max(dt_consulta::date) dt_consulta
	into temp table protesto5
from
	(
	select
		dsscc.nu_cpf_cnpj,
		to_date(right(dscsp.dt_protesto_mais_recente, 4) ||'-' || substring(dscsp.dt_protesto_mais_recente, 4, 2) ||'-' || left(dscsp.dt_protesto_mais_recente, 2),'yyyy-dd-mm') as dt_protesto_mais_recente,
		qt_protestos::int,
		vl_total_protestos::float8,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,qt_protestos::int,vl_total_protestos::float8,dt_protesto_mais_recente, max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral dscsp
		group by cd_cliente,qt_protestos::int,vl_total_protestos::float8,dt_protesto_mais_recente) dscsp on dscsp.cd_cliente = dscc.cd_cliente
	/*from
			speedy_ds.cad_serasa_geral dscsp
	left join (select nu_cpf_cnpj,cd_cliente from  restricted.speedy_ds__cad_cliente) dscc on
			dscsp.cd_cliente = dscc.cd_cliente
	left join final_liquidacao_parcelado dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	where
		dt_consulta::date between now() - interval'18 months' and now()
	group by
		1,
		2,
		3,
		4
union all
	select
		dcscc.nu_cpf_cnpj,
		to_date(right(dccsp.dt_protesto_mais_recente, 4) ||'-' || substring(dccsp.dt_protesto_mais_recente, 4, 2) ||'-' || left(dccsp.dt_protesto_mais_recente, 2),'yyyy-dd-mm') as dt_protesto_mais_recente,
		qt_protestos::int,
		vl_total_protestos::float8,
		max(dt_consulta::date) dt_consulta
		
from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,qt_protestos::int,vl_total_protestos::float8,dt_protesto_mais_recente, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral dccsp
		group by cd_cliente,qt_protestos::int,vl_total_protestos::float8,dt_protesto_mais_recente) dccsp on dccsp.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsp
	left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on
			dccsp.cd_cliente = dccc.cd_cliente
	left join final_liquidacao_parcelado dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	where
		dt_consulta::date between now() - interval'18 months' and now()
	group by
		1,
		2,
		3,
		4) total
group by
	1,
	2,
	3,
	4;
create index if not exists idx__protesto5 on protesto5 (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists protesto2;	

select
	nu_cpf_cnpj,
	max(dt_consulta::date) dt_consulta
	into temp table protesto2
from
	(
	select
		dsscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral dscsp
		group by cd_cliente) dscsp on dscsp.cd_cliente = dscc.cd_cliente

	/*from
			speedy_ds.cad_serasa_geral dscsp
	left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on
			dscsp.cd_cliente = dscc.cd_cliente
	left join final_liquidacao_parcelado dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	where
		dt_consulta::date between now() - interval'18 months' and now()
	group by
		1
union all
	select
		dcscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral dccsp
		group by cd_cliente) dccsp on dccsp.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsp
	left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on
			dccsp.cd_cliente = dccc.cd_cliente
	left join final_liquidacao_parcelado dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	where
		dt_consulta::date between now() - interval'18 months' and now()
	group by
		1) total
group by
	1;
create index if not exists idx__protesto2 on protesto2 (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists protesto7;	
select
	distinct 
	protesto2.nu_cpf_cnpj,
	protesto5.qt_protestos::int,
	protesto5.vl_total_protestos::float8,
	min(now()::date - protesto5.dt_protesto_mais_recente::date) as protesto_recencia
	into temp table protesto7
from
	protesto2
left join protesto5 on
	protesto2.nu_cpf_cnpj = protesto5.nu_cpf_cnpj
	and protesto2.dt_consulta = protesto5.dt_consulta
	where qt_protestos>'0'
	group by
	1,2,3;
create index if not exists idx__protesto7 on protesto7 (nu_cpf_cnpj);	
-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists protesto8;	
select 
nu_cpf_cnpj,
min(protesto_recencia) as protesto_recencia
into temp table protesto8
from protesto7
group by 1;
create index if not exists idx__protesto8 on protesto8 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists final_protesto;	
with pontuacao_protesto as (
select
	protesto8.nu_cpf_cnpj,
	protesto7.qt_protestos::int,
	protesto7.vl_total_protestos::float8,
	protesto8.protesto_recencia
from
	protesto8
left join protesto7 on
	protesto8.nu_cpf_cnpj = protesto7.nu_cpf_cnpj
	and 
protesto8.protesto_recencia = protesto7.protesto_recencia)
select
	nu_cpf_cnpj,
	   qt_protestos::int,
	   case
		when qt_protestos::int is null then (select * from qtd_protesto_01)
		when qt_protestos::int = 0 then (select * from qtd_protesto_02)
		when qt_protestos::int < 1 then (select * from qtd_protesto_03)
		when qt_protestos::int < 3 then (select * from qtd_protesto_04)
		when qt_protestos::int < 5 then (select * from qtd_protesto_05)
		when qt_protestos::int < 7 then (select * from qtd_protesto_06)
		when qt_protestos::int < 10 then (select * from qtd_protesto_07)
		else (select * from qtd_protesto_08)
	end as pontuacao_qtd_protesto,
	   	vl_total_protestos::float8,
	   	case
		when vl_total_protestos::float8 is null then (select * from vl_protesto_01)
		when vl_total_protestos::float8 = 0 then (select * from vl_protesto_02)
		when vl_total_protestos::float8 < 600 then (select * from vl_protesto_03)
		when vl_total_protestos::float8 < 1600 then (select * from vl_protesto_04)
		when vl_total_protestos::float8 < 3200 then (select * from vl_protesto_05)
		when vl_total_protestos::float8 < 5800 then (select * from vl_protesto_06)
		when vl_total_protestos::float8 < 10000 then (select * from vl_protesto_07)
		when vl_total_protestos::float8 < 16000 then (select * from vl_protesto_08)
		when vl_total_protestos::float8 < 28000 then (select * from vl_protesto_09)
		else (select * from vl_protesto_10)
	end as pontuacao_valor_protesto,
		protesto_recencia,
		case
		when protesto_recencia is null then (select * from recencia_protesto_01)
		when protesto_recencia < 30 then (select * from recencia_protesto_02)
		when protesto_recencia < 45 then (select * from recencia_protesto_03)
		when protesto_recencia < 180 then (select * from recencia_protesto_04)
		when protesto_recencia < 270 then (select * from recencia_protesto_05)
		when protesto_recencia < 360 then (select * from recencia_protesto_06)
		when protesto_recencia < 428 then (select * from recencia_protesto_07)
		when protesto_recencia < 534 then (select * from recencia_protesto_08)
		else (select * from recencia_protesto_09)
	end as pontuacao_recencia_protesto
	into temp table final_protesto
	from
	pontuacao_protesto;
create index if not exists idx__final_protesto on final_protesto (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação Bases Anteriores com Protesto xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists baseunificada2;
select
	base_unificada1.*,
	final_protesto.qt_protestos,
	final_protesto.pontuacao_qtd_protesto,
	final_protesto.vl_total_protestos,
	final_protesto.pontuacao_valor_protesto, 
	final_protesto.protesto_recencia,
	final_protesto.pontuacao_recencia_protesto,
	case 
		when final_protesto.protesto_recencia>= 1095 then (final_protesto.pontuacao_qtd_protesto+final_protesto.pontuacao_valor_protesto+final_protesto.pontuacao_recencia_protesto)*0.75
		when final_protesto.protesto_recencia>= 1460 then (final_protesto.pontuacao_qtd_protesto+final_protesto.pontuacao_valor_protesto+final_protesto.pontuacao_recencia_protesto)*0.5
		when final_protesto.protesto_recencia>= 1825 then (final_protesto.pontuacao_qtd_protesto+final_protesto.pontuacao_valor_protesto+final_protesto.pontuacao_recencia_protesto)*0.3
		else (final_protesto.pontuacao_qtd_protesto+final_protesto.pontuacao_valor_protesto+final_protesto.pontuacao_recencia_protesto)
	end as 	score_protesto
	into temp table baseunificada2
from
	base_unificada1
left join final_protesto on
	base_unificada1.nu_cpf_cnpj = final_protesto.nu_cpf_cnpj;
create index if not exists idx__baseunificada2 on baseunificada2 (nu_cpf_cnpj);	
/*drop table if exists baseunificada2;	
select
	base_unificada1.*,
	final_protesto.qt_protestos,
	final_protesto.pontuacao_qtd_protesto,
	final_protesto.vl_total_protestos,
	final_protesto.pontuacao_valor_protesto,
	final_protesto.protesto_recencia,
	final_protesto.pontuacao_recencia_protesto,
	(final_protesto.pontuacao_qtd_protesto+final_protesto.pontuacao_valor_protesto+final_protesto.pontuacao_recencia_protesto) score_protesto
	into temp table baseunificada2
from
	base_unificada1
left join final_protesto on
	base_unificada1.nu_cpf_cnpj = final_protesto.nu_cpf_cnpj;
create index if not exists idx__baseunificada2 on baseunificada2 (nu_cpf_cnpj);	*/
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Cheque Quantidade xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists cheque1;	
select
    nu_cpf_cnpj,
    qt_cheques::int,
    max(dt_consulta::date) as dt_consulta
    into temp table cheque1
from
    (
select
dsscc.nu_cpf_cnpj,
qt_cheques,
dt_consulta::date as dt_consulta
from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,qt_cheques,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_cheques
group by cd_cliente,qt_cheques) dscsc on dscsc.cd_cliente = dscc.cd_cliente
union all
select
dcscc.nu_cpf_cnpj,
qt_cheques,
dt_consulta::date as dt_consulta
from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,qt_cheques,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_cheques
group by cd_cliente,qt_cheques) dccsc on dccsc.cd_cliente = dccc.cd_cliente) total
group by
    1,
    2;
create index if not exists idx__cheque1 on cheque1 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx data e cpf
drop table if exists cheque2;		
	
select
	nu_cpf_cnpj,
	max(dt_consulta::date) as dt_consulta
	into
	temp table cheque2
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_consulta::date
	from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,qt_cheques,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_cheques
group by cd_cliente,qt_cheques) dscsc on dscsc.cd_cliente = dscc.cd_cliente
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_consulta::date
	from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dscc on dcscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,qt_cheques,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_cheques
group by cd_cliente,qt_cheques) dscsc on dscsc.cd_cliente = dscc.cd_cliente) total
group by
	nu_cpf_cnpj;
create index if not exists idx__cheque2 on cheque2 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists cheque_quantidade;	
select
	distinct 
	cheque2.nu_cpf_cnpj,
	cheque2.dt_consulta::date,
	max(cheque1.qt_cheques) qt_cheques
	into temp table cheque_quantidade
from
	cheque2
left join cheque1 on
	cheque2.nu_cpf_cnpj = cheque1.nu_cpf_cnpj
	and cheque2.dt_consulta = cheque1.dt_consulta
where
	cheque2.nu_cpf_cnpj is not null
	and cheque1.qt_cheques>0
group by
	1,
	2;
create index if not exists idx__cheque_quantidade on cheque_quantidade (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontuacao_cheque_qtd;	
select nu_cpf_cnpj,
qt_cheques,
case 
	when qt_cheques::int is null then (select * from qt_cheques_01)
	when qt_cheques::int = 0 then (select * from qt_cheques_02)
	when qt_cheques::int = 1 then (select * from qt_cheques_03)
	when qt_cheques::int < 3 then (select * from qt_cheques_04)
	when qt_cheques::int < 5 then (select * from qt_cheques_05)
	when qt_cheques::int < 7 then (select * from qt_cheques_06)
	when qt_cheques::int < 10 then (select * from qt_cheques_07)
	else (select * from qt_cheques_08)
end as pontuacao_cheque_qtd
into temp table pontuacao_cheque_qtd
from cheque_quantidade;
create index if not exists idx__pontuacao_cheque_qtd on pontuacao_cheque_qtd (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Cheque Recencia xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists cheque4;	

select
	nu_cpf_cnpj,
	dt_cheque_mais_recente::date,
	max(dt_consulta::date) as dt_consulta
	into
	temp table cheque4
from
	(
	select
		dsscc.nu_cpf_cnpj,
		--dt_cheque_mais_recente::date,
		to_date(right(dt_cheque_mais_recente, 4) ||'-' || substring(dt_cheque_mais_recente, 4, 2) ||'-' || left(dt_cheque_mais_recente, 2),'yyyy-mm-dd') as dt_cheque_mais_recente,
		max(dt_consulta::date) as dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente, dt_cheque_mais_recente ,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_cheques
group by cd_cliente,dt_cheque_mais_recente) dscsc on dscsc.cd_cliente = dscc.cd_cliente
		group by
		1,
		2
union all
	select
		dcscc.nu_cpf_cnpj,
		to_date(right(dt_cheque_mais_recente, 4) ||'-' || substring(dt_cheque_mais_recente, 4, 2) ||'-' || left(dt_cheque_mais_recente, 2),'yyyy-mm-dd') as dt_cheque_mais_recente,
		max(dt_consulta::date) as dt_consulta
	from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dscc on dcscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,dt_cheque_mais_recente,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_cheques
group by cd_cliente,dt_cheque_mais_recente) dscsc on dscsc.cd_cliente = dscc.cd_cliente
	group by
		1,
		2) total
group by
	1,
	2;
create index if not exists idx__pontuacao_cheque_recencia on cheque4 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx data e cpf
drop table if exists cheque3;	
	
select
	nu_cpf_cnpj,
	max(dt_consulta::date) as dt_consulta
	into
	temp table cheque3
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_consulta::date
	from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente, dt_cheque_mais_recente ,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_cheques
group by cd_cliente,dt_cheque_mais_recente) dscsc on dscsc.cd_cliente = dscc.cd_cliente
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_consulta::date
	from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dscc on dcscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,dt_cheque_mais_recente,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_cheques
group by cd_cliente,dt_cheque_mais_recente) dscsc on dscsc.cd_cliente = dscc.cd_cliente
	)total
group by
	1;
create index if not exists idx__cheque3 on cheque3 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists cheque_recencia_final;
select
	distinct 
	cheque3.nu_cpf_cnpj,
	now()::date - cheque4.dt_cheque_mais_recente recencia_cheque
	into temp table cheque_recencia_final
from
	cheque3
left join cheque4 on
		cheque3.nu_cpf_cnpj = cheque4.nu_cpf_cnpj
	and cheque3.dt_consulta = cheque4.dt_consulta
	where cheque3.nu_cpf_cnpj is not null
	and now()::date - cheque4.dt_cheque_mais_recente is not null; --tratar os nulos quando entrar em produção

	create index if not exists idx__cheque_recencia_final on cheque_recencia_final (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pont_cheque_recencia;	

select
	nu_cpf_cnpj,
	recencia_cheque,
	case 
		when recencia_cheque is null then (select * from recencia_cheque_01)
		when recencia_cheque < 30 then (select * from recencia_cheque_02)
		when recencia_cheque < 45 then (select * from recencia_cheque_03)
		when recencia_cheque < 180 then (select * from recencia_cheque_04)
		when recencia_cheque < 270 then (select * from recencia_cheque_05)
		when recencia_cheque < 360 then (select * from recencia_cheque_06)
		when recencia_cheque < 428 then (select * from recencia_cheque_07)
		when recencia_cheque < 540 then (select * from recencia_cheque_08)
		else (select * from recencia_cheque_09)
	end as pontuacao_recencia_cheque
into temp table pont_cheque_recencia
from
	cheque_recencia_final;
create index if not exists idx__pont_cheque_recencia on pont_cheque_recencia (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx unificação base cheque xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists final_cheque;

select
	pontuacao_cheque_qtd.nu_cpf_cnpj,
	pontuacao_cheque_qtd.qt_cheques,
	pontuacao_cheque_qtd.pontuacao_cheque_qtd,
	pont_cheque_recencia.recencia_cheque,
	pont_cheque_recencia.pontuacao_recencia_cheque,
	(pontuacao_cheque_qtd.pontuacao_cheque_qtd::int + pont_cheque_recencia.pontuacao_recencia_cheque::int) as score_cheque
	into temp table final_cheque
from
	pontuacao_cheque_qtd
left join pont_cheque_recencia on
	pontuacao_cheque_qtd.nu_cpf_cnpj = pont_cheque_recencia.nu_cpf_cnpj;
create index if not exists idx__final_cheque on final_cheque (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação base completa com cheque xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists baseunificada3;
select
	baseunificada2.*,
	final_cheque.qt_cheques,
	final_cheque.pontuacao_cheque_qtd,
	final_cheque.recencia_cheque,
	final_cheque.pontuacao_recencia_cheque,
	final_cheque.score_cheque
	into temp table baseunificada3
from
	baseunificada2
left join final_cheque on
	baseunificada2.nu_cpf_cnpj = final_cheque.nu_cpf_cnpj;
create index if not exists idx__baseunificada3 on baseunificada3 (nu_cpf_cnpj); 
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Pfin Quatidade xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--diferença meses
drop table if exists pfin1;

select
	nu_cpf_cnpj,
	qt_pendencias_financeiras,
	max(dt_consulta::date) dt_consulta
	into
	temp table pfin1
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dscsg.qt_pendencias_financeiras,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,qt_pendencias_financeiras, max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente,qt_pendencias_financeiras) dscsg on dscsg.cd_cliente = dscc.cd_cliente
	/*from
			speedy_ds.cad_serasa_geral dscsg
	left join restricted.speedy_ds__cad_cliente dscc on
			dscsg.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	group by
		dsscc.nu_cpf_cnpj,
		dscsg.qt_pendencias_financeiras
union all
	select
		dcscc.nu_cpf_cnpj,
		dccsg.qt_pendencias_financeiras,
		max(dt_consulta::date) dt_consulta
	from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,qt_pendencias_financeiras, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente,qt_pendencias_financeiras) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsg
	left join restricted.speedy_dc__cad_cliente dccc on
			dccsg.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	group by
		dcscc.nu_cpf_cnpj,
		dccsg.qt_pendencias_financeiras) total
group by
	1,
	2;

create index if not exists idx__pfin1 on pfin1 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pfin2;

select
	nu_cpf_cnpj,
	max(dt_consulta::date) dt_consulta
	into temp table pfin2
from
	(
	select
		dsscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente) dscsg on dscsg.cd_cliente = dscc.cd_cliente

	/*from
			speedy_ds.cad_serasa_geral dscsg
	left join restricted.speedy_ds__cad_cliente dscc on
			dscsg.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	group by
		dsscc.nu_cpf_cnpj
union all
	select
		dcscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsg
	left join restricted.speedy_dc__cad_cliente dccc on
			dccsg.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	group by
		dcscc.nu_cpf_cnpj) total
group by
	1;
create index if not exists idx__pfin2 on pfin2 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pfin_qtd_final;
select
	distinct 
	pfin2.nu_cpf_cnpj,
	max(pfin1.qt_pendencias_financeiras) as pfin_qtd
	into temp table pfin_qtd_final
from
	pfin2
left join pfin1 on
	pfin2.nu_cpf_cnpj = pfin1.nu_cpf_cnpj
	and pfin2.dt_consulta = pfin1.dt_consulta
	where pfin1.qt_pendencias_financeiras >'0'
	--and pfin2.nu_cpf_cnpj='466.276.368-16'
	group by 1;
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pont_pefin_qtd;
select nu_cpf_cnpj,
pfin_qtd,
case 
		when pfin_qtd::int is null then (select * from qtd_pfin_01)
		when pfin_qtd::int = 0 then (select * from qtd_pfin_02)
		when pfin_qtd::int = 1 then (select * from qtd_pfin_03)
		when pfin_qtd::int < 3 then (select * from qtd_pfin_04)
		when pfin_qtd::int < 5 then (select * from qtd_pfin_05)
		when pfin_qtd::int < 7 then (select * from qtd_pfin_06)
		when pfin_qtd::int < 10 then (select * from qtd_pfin_07)
		else (select * from qtd_pfin_08)
	end as pontuacao_pefin_qtd
	into temp table pont_pefin_qtd
	from pfin_qtd_final;

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Pfin Recencia xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pfin3;
--diferença meses
select
	nu_cpf_cnpj,
	maisrecente::date,
	max(dt_consulta::date) dt_consulta
	into temp table pfin3
from
	(
	select
		dsscc.nu_cpf_cnpj,
		to_date(right(dscsg.dt_pendencia_mais_recente, 4) ||'-' || left(dscsg.dt_pendencia_mais_recente, 2),'yyyy-mm') as maisrecente,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,dt_pendencia_mais_recente, max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente,dt_pendencia_mais_recente) dscsg on dscsg.cd_cliente = dscc.cd_cliente

	/*from
			speedy_ds.cad_serasa_geral dscsg
	left join restricted.speedy_ds__cad_cliente dscc on
			dscsg.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	group by
		1,
		2
union all
	select
		dcscc.nu_cpf_cnpj,
		to_date(right(dccsg.dt_pendencia_mais_recente, 4) ||'-' || left(dccsg.dt_pendencia_mais_recente, 2),'yyyy-mm') as maisrecente,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,dt_pendencia_mais_recente, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente,dt_pendencia_mais_recente) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsg
	left join restricted.speedy_dc__cad_cliente dccc on
			dccsg.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	group by
		1,
		2) total
	group by 1,2;


create index if not exists idx__pfin3 on pfin3 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pfin4;

select
	nu_cpf_cnpj,
	max(dt_consulta::date) dt_consulta
	into temp table pfin4
from
	(
	select
		dsscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente) dscsg on dscsg.cd_cliente = dscc.cd_cliente
	/*from
			speedy_ds.cad_serasa_geral dscsg
	left join restricted.speedy_ds__cad_cliente dscc on
			dscsg.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	group by
		1
union all
	select
		dcscc.nu_cpf_cnpj,
		max(dt_consulta::date) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.cad_serasa_geral dccsg
	left join restricted.speedy_dc__cad_cliente dccc on
			dccsg.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	group by
		1) total
group by
	1;
create index if not exists idx__pfin4 on pfin4 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontu_pefin_recencia;
select
	distinct 
	pfin4.nu_cpf_cnpj,
	max(now()::date - pfin3.maisrecente::date) as pfin_recencia,
	case 
		when max(now()::date - pfin3.maisrecente::date)::int is null then (select * from recencia_pfin_01)
		when max(now()::date - pfin3.maisrecente::date)::int < 45 then (select * from recencia_pfin_02)
		when max(now()::date - pfin3.maisrecente::date)::int < 180 then (select * from recencia_pfin_03)
		when max(now()::date - pfin3.maisrecente::date)::int < 270 then (select * from recencia_pfin_04)
		when max(now()::date - pfin3.maisrecente::date)::int < 360 then (select * from recencia_pfin_05)
		when max(now()::date - pfin3.maisrecente::date)::int < 428 then (select * from recencia_pfin_06)
		when max(now()::date - pfin3.maisrecente::date)::int < 540 then (select * from recencia_pfin_07)
		else (select * from recencia_pfin_08)
	end as pontuacao_pefin_recencia
	into temp table pontu_pefin_recencia
from
	pfin4
left join pfin3 on
	pfin4.nu_cpf_cnpj = pfin3.nu_cpf_cnpj
	and pfin4.dt_consulta = pfin3.dt_consulta
where
	pfin3.maisrecente::date is not null
group by
	1;
create index if not exists idx__pontu_pefin_recencia on pontu_pefin_recencia (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Pfin Valor xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pfin5;
select
	nu_cpf_cnpj,
	vl_total_pendencias,
	max(dt_consulta::TIMESTAMP) dt_consulta
	into temp table pfin5
	from (
	select
		dsscc.nu_cpf_cnpj,
		dscsg.vl_total_pendencias,
		max(dt_consulta::TIMESTAMP) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,vl_total_pendencias, max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente,vl_total_pendencias) dscsg on dscsg.cd_cliente = dscc.cd_cliente
	group by
		1,
		2
union all
	select
		dcscc.nu_cpf_cnpj,
		dccsg.vl_total_pendencias,
		max(dt_consulta::TIMESTAMP) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,vl_total_pendencias, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente,vl_total_pendencias) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	group by
		1,
		2) total
		where 
		vl_total_pendencias is not null
	group by 1,2;

create index if not exists idx__pfin5 on pfin5 (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pfin6;	
select
	nu_cpf_cnpj,
	max(dt_consulta::TIMESTAMP) dt_consulta
	into temp table pfin6
from
	(
	select
		dsscc.nu_cpf_cnpj,
		max(dt_consulta::TIMESTAMP) dt_consulta
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente, max(dt_consulta::date) dt_consulta from speedy_ds.cad_serasa_geral
	group by cd_cliente) dscsg on dscsg.cd_cliente = dscc.cd_cliente
	group by
		1
union all
	select
		dcscc.nu_cpf_cnpj,
		max(dt_consulta::TIMESTAMP) dt_consulta
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente, max(dt_consulta::date) dt_consulta from speedy_dc.cad_serasa_geral
	group by cd_cliente) dccsg on dccsg.cd_cliente = dccc.cd_cliente
	group by
		1) total
group by
	1;
create index if not exists idx__pfin6 on pfin6 (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pfin__valor;	
select
	distinct 
	pfin6.nu_cpf_cnpj,
	REPLACE(pfin5.vl_total_pendencias, '.', ',')  as pfin_valor
	into temp table pfin__valor
from
	pfin6
left join pfin5 on
	pfin6.nu_cpf_cnpj = pfin5.nu_cpf_cnpj
	and pfin6.dt_consulta = pfin5.dt_consulta
where pfin5.vl_total_pendencias::float8 > 0;
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
create index if not exists idx__pfin__valor on pfin__valor (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontu_pefin_valor;

select
	nu_cpf_cnpj,
	pfin_valor,
	case 
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) is null then (select * from vl_pfin_01)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) = 0 then (select * from vl_pfin_02)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 600 then (select * from vl_pfin_03)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 1600 then (select * from vl_pfin_04)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 3200 then (select * from vl_pfin_05)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 5800 then (select * from vl_pfin_06)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 10000 then (select * from vl_pfin_07)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 16000 then (select * from vl_pfin_08)
		when CAST(REPLACE(pfin_valor, ',', '.') AS FLOAT8) < 28000 then (select * from vl_pfin_09)
		else (select * from vl_pfin_10)
	end as pontuacao_pefin_valor
	into
	temp table pontu_pefin_valor
from
	pfin__valor;
create index if not exists idx__pontu_pefin_valor on pontu_pefin_valor (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação base Pfin xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists score_pfin_final;	
select
	pont_pefin_qtd.*,
	pontu_pefin_recencia.pfin_recencia,
	pontu_pefin_recencia.pontuacao_pefin_recencia,
	pontu_pefin_valor.pfin_valor,
	pontu_pefin_valor.pontuacao_pefin_valor,	
case
	when pontu_pefin_recencia.pfin_recencia::int>= 1095 then (pont_pefin_qtd.pontuacao_pefin_qtd + pontu_pefin_recencia.pontuacao_pefin_recencia + pontu_pefin_valor.pontuacao_pefin_valor)::int*0.75
	when pontu_pefin_recencia.pfin_recencia::int>= 1460 then (pont_pefin_qtd.pontuacao_pefin_qtd + pontu_pefin_recencia.pontuacao_pefin_recencia + pontu_pefin_valor.pontuacao_pefin_valor)::int*0.5
	when pontu_pefin_recencia.pfin_recencia::int>= 1825 then (pont_pefin_qtd.pontuacao_pefin_qtd + pontu_pefin_recencia.pontuacao_pefin_recencia + pontu_pefin_valor.pontuacao_pefin_valor)::int*0.3
	else (pont_pefin_qtd.pontuacao_pefin_qtd + pontu_pefin_recencia.pontuacao_pefin_recencia + pontu_pefin_valor.pontuacao_pefin_valor)
end as 	score_pfin
	into temp table score_pfin_final
from
	pont_pefin_qtd
left join pontu_pefin_recencia on 
pont_pefin_qtd.nu_cpf_cnpj = pontu_pefin_recencia.nu_cpf_cnpj
left join pontu_pefin_valor on 
pont_pefin_qtd.nu_cpf_cnpj = pontu_pefin_valor.nu_cpf_cnpj;

create index if not exists idx__score_pfin_final on score_pfin_final (nu_cpf_cnpj);
/*drop table if exists score_pfin_final;
select
	pont_pefin_qtd.*,
	pontu_pefin_recencia.pfin_recencia,
	pontu_pefin_recencia.pontuacao_pefin_recencia,
	pontu_pefin_valor.pfin_valor,
	pontu_pefin_valor.pontuacao_pefin_valor,	
	(pont_pefin_qtd.pontuacao_pefin_qtd + pontu_pefin_recencia.pontuacao_pefin_recencia + pontu_pefin_valor.pontuacao_pefin_valor) score_pfin
	into temp table score_pfin_final
from
	pont_pefin_qtd
left join pontu_pefin_recencia on 
pont_pefin_qtd.nu_cpf_cnpj = pontu_pefin_recencia.nu_cpf_cnpj
left join pontu_pefin_valor on 
pont_pefin_qtd.nu_cpf_cnpj = pontu_pefin_valor.nu_cpf_cnpj;

create index if not exists idx__score_pfin_final on score_pfin_final (nu_cpf_cnpj);*/

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação Pfin com Base principal xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists baseunificada4;
select
	baseunificada3.*,
	score_pfin_final.pfin_qtd,
	score_pfin_final.pontuacao_pefin_qtd,
	score_pfin_final.pfin_recencia,
	score_pfin_final.pontuacao_pefin_recencia,
	score_pfin_final.pfin_valor,
	score_pfin_final.pontuacao_pefin_valor,
	score_pfin_final.score_pfin
into temp table baseunificada4
from
	baseunificada3
left join score_pfin_final on
	baseunificada3.nu_cpf_cnpj = score_pfin_final.nu_cpf_cnpj;

create index if not exists idx__baseunificada4 on baseunificada4 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Desconto recencia xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists pontu_desconto_recencia;
select
	nu_cpf_cnpj,
	max(now()::date - dt_liquidacao::date) as recencia_desconto,
	case 
		when max(now()::date - dt_liquidacao::date) is null then (select * from recencia_desconto_01)
		when max(now()::date - dt_liquidacao::date) = 0 then (select * from recencia_desconto_02)
		when max(now()::date - dt_liquidacao::date) < 30 then (select * from recencia_desconto_03)
		when max(now()::date - dt_liquidacao::date) < 60 then (select * from recencia_desconto_04)
		when max(now()::date - dt_liquidacao::date) < 180 then (select * from recencia_desconto_05)
		when max(now()::date - dt_liquidacao::date) < 270 then (select * from recencia_desconto_06)
		when max(now()::date - dt_liquidacao::date) < 360 then (select * from recencia_desconto_07)
		when max(now()::date - dt_liquidacao::date) < 428 then (select * from recencia_desconto_08)
		when max(now()::date - dt_liquidacao::date) < 540 then (select * from recencia_desconto_09)
		else (select * from recencia_desconto_10)
	end as pontuacao_desconto_recencia
	into temp table pontu_desconto_recencia
from
	(
	select
		nu_cpf_cnpj,
		max(dt_liquidacao::date) as dt_liquidacao
	from
		(
		select
			dsscc.nu_cpf_cnpj,
			max(dsrt.dt_liquidacao::date) as dt_liquidacao			
from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente, id_cobranca, vl_desconto, max(dt_liquidacao::date) as dt_liquidacao from speedy_ds.rcb_titulo
group by cd_cliente, id_cobranca, vl_desconto) dsrt on dsrt.cd_cliente = dscc.cd_cliente
		/*from
			speedy_ds.rcb_titulo dsrt
		left join restricted.speedy_ds__cad_cliente dscc on
			dsrt.cd_cliente = dscc.cd_cliente
		left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
		where
			dsrt.dt_liquidacao::date between now() - interval'24 months' and now()
			and ID_COBRANCA in ('0','26')
			and dsrt.vl_desconto::float8 >= 150.0
			--and dt_vencimento::date < dt_liquidacao::date
		group by
			dsscc.nu_cpf_cnpj
	union all
		select
			dcscc.nu_cpf_cnpj,
			max(dt_liquidacao::date)
			from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente, id_cobranca, vl_desconto, max(dt_liquidacao::date) as dt_liquidacao from speedy_dc.rcb_titulo
group by cd_cliente, id_cobranca, vl_desconto) dcrt on dcrt.cd_cliente = dccc.cd_cliente
		/*from
			speedy_dc.rcb_titulo dcrt
		left join restricted.speedy_dc__cad_cliente dccc on
			dcrt.cd_cliente = dccc.cd_cliente
		left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
		where
			dcrt.dt_liquidacao::date between now() - interval'24 months' and now()
			and ID_COBRANCA in ('0','26')
			and dcrt.vl_desconto::float8 >= 150.0
		group by
			dcscc.nu_cpf_cnpj) total
	group by
		1) geral
group by
		1;
	create index if not exists idx__pontu_desconto_recencia on pontu_desconto_recencia (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Desconto Valor xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	
drop table if exists pontu_desconto_valor;
select
	nu_cpf_cnpj,
	sum(vl_desconto::float8) as desconto_valor,
	case 
		when sum(vl_desconto::float8) is null then (select * from vl_desconto_01)
		when sum(vl_desconto::float8) = 0 then (select * from vl_desconto_02)
		when sum(vl_desconto::float8) < 600 then (select * from vl_desconto_03)
		when sum(vl_desconto::float8) < 1600 then (select * from vl_desconto_04)
		when sum(vl_desconto::float8) < 3200 then (select * from vl_desconto_05)
		when sum(vl_desconto::float8) < 5800 then (select * from vl_desconto_06)
		when sum(vl_desconto::float8) < 10000 then (select * from vl_desconto_07)
		when sum(vl_desconto::float8) < 28000 then (select * from vl_desconto_08)
		else (select * from vl_desconto_09)
	end as pontuacao_desconto_valor
	into temp table pontu_desconto_valor
from
	(
	select
		dsscc.nu_cpf_cnpj,
		sum(dsrt.vl_desconto::float8) as vl_desconto
		from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente, id_cobranca, vl_desconto,dt_liquidacao from speedy_ds.rcb_titulo) dsrt on dsrt.cd_cliente = dscc.cd_cliente

	/*from
			speedy_ds.rcb_titulo dsrt
	left join restricted.speedy_ds__cad_cliente dscc on
			dsrt.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	where
		dsrt.dt_liquidacao::date between now() - interval'24 months' and now()
		and ID_COBRANCA in ('0','26')
		and dsrt.vl_desconto::float8 >= 150.0
		and dsscc.nu_cpf_cnpj is not null
	group by
		dsscc.nu_cpf_cnpj,
		dt_liquidacao
union all
	select
		dcscc.nu_cpf_cnpj,
		sum(dcrt.vl_desconto::float8) as vl_desconto
		from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente, id_cobranca, vl_desconto, dt_liquidacao as dt_liquidacao from speedy_dc.rcb_titulo) dcrt on 
dcrt.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.rcb_titulo dcrt
	left join restricted.speedy_dc__cad_cliente dccc on
			dcrt.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	where
		dcrt.dt_liquidacao::date between now() - interval'24 months' and now()
		and ID_COBRANCA in ('0','26')
		and dcrt.vl_desconto::float8 >= 150.0
		and dcscc.nu_cpf_cnpj is not null
	group by
		dcscc.nu_cpf_cnpj) total
group by
		nu_cpf_cnpj;
create index if not exists idx__pontu_desconto_valor on pontu_desconto_valor (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação desconto xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists score_desconto_final;

select
	pontu_desconto_recencia.*,
	pontu_desconto_valor.desconto_valor,
	pontu_desconto_valor.pontuacao_desconto_valor,
	(pontu_desconto_valor.pontuacao_desconto_valor + pontu_desconto_recencia.pontuacao_desconto_recencia) score_desconto
	into temp table score_desconto_final
from
	pontu_desconto_recencia
left join pontu_desconto_valor on
	pontu_desconto_recencia.nu_cpf_cnpj = pontu_desconto_valor.nu_cpf_cnpj;
create index if not exists idx__score_desconto_final on score_desconto_final (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação desconto com Base principal xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists baseunificada5;
select
	baseunificada4.*,
	score_desconto_final.recencia_desconto,
	score_desconto_final.pontuacao_desconto_recencia,
	score_desconto_final.desconto_valor,
	score_desconto_final.pontuacao_desconto_valor,
	score_desconto_final.score_desconto
	into temp table baseunificada5
from
	baseunificada4
left join score_desconto_final on
	baseunificada4.nu_cpf_cnpj = score_desconto_final.nu_cpf_cnpj;
create index if not exists idx__baseunificada5 on baseunificada5 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Idade xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists idade_final;
select
	distinct nu_cpf_cnpj,
	max(idade) as idade,
	case 
		when max(idade) is null then (select * from idade_01)
		when max(idade) < 18 then (select * from idade_02)
		when max(idade) < 28 then (select * from idade_03)
		when max(idade) < 35 then (select * from idade_04)
		when max(idade) < 45 then (select * from idade_05)
		when max(idade) < 60 then (select * from idade_06)
		when max(idade) < 85 then (select * from idade_07)
		else (select * from idade_08)
	end as pontuacao_idade
	into temp table idade_final
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_nascimento,
		extract (year
	from
		age (dscc.dt_nascimento::date)) idade
	from
		liquidadoparcelado_baselimite dsscc
	left join restricted.speedy_ds__cad_cliente dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_nascimento,
		extract (year
	from
		age (dccc.dt_nascimento::date)) idade
	from
		liquidadoparcelado_baselimite dcscc
	left join restricted.speedy_dc__cad_cliente dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj) total
where
	nu_cpf_cnpj is not null
	and idade is not null
group by
	1;

create index if not exists idx__idade_final on idade_final (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx unificação idade com base geral xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists baseunificada6;

select
	baseunificada5.*,
	idade,
	pontuacao_idade
	into temp table baseunificada6
from
	baseunificada5
left join idade_final on
	baseunificada5.nu_cpf_cnpj = idade_final.nu_cpf_cnpj;
create index if not exists idx__baseunificada6 on baseunificada6 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx atraso maximo e ultima data liquidação atraso xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists maximo_atraso;

select * 
into temp table maximo_atraso
from 
(select
		dscc.nu_cpf_cnpj,
		dsrt.dt_vencimento,
		case 
			when dsrt.dt_liquidacao is null
		and id_ativo in ('1','2','3')
		and dsrt.dt_emissao::date >='2020-05-01' then dsrtl.dt_liquidacao
		else dsrt.dt_liquidacao
	end as dt_liquidacao

from final_liquidacao_parcelado dsscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join (select cd_cliente,dt_vencimento, dt_liquidacao,id_ativo,dt_emissao,nu_titulo,ID_COBRANCA,nu_parcela,cd_empresa from speedy_ds.rcb_titulo) dsrt on dsrt.cd_cliente = dscc.cd_cliente
left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_ds.rcb_titulo_liquidacao) dsrtl on
		dsrt.nu_titulo = dsrtl.nu_titulo
	and dsrt.nu_parcela = dsrtl.nu_parcela
	and dsrt.cd_empresa = dsrtl.cd_empresa
left join (select nu_titulo,nu_parcela,cd_empresa from speedy_ds.rel_titulo_orig_reparcelamento) dsrtor on
		dsrt.nu_titulo = dsrtor.nu_titulo
	and dsrt.nu_parcela = dsrtor.nu_parcela
	and dsrt.cd_empresa = dsrtor.cd_empresa
where
	dt_vencimento::date < now()
	and (id_ativo ='1'
		and dt_emissao::date >'2012-08-03'
		or id_ativo in ('2','3')
			and dt_emissao::date >='2020-05-01')
	--and dsrtl.dt_liquidacao::date !='1899-12-30'
	--and dsrt.dt_liquidacao::date !='1899-12-30'
	and ID_COBRANCA in ('0','26')
	and (dsrtor.nu_titulo is null or dsrtor.nu_titulo is not null and id_ativo in ('1'))
union all
select
		dccc.nu_cpf_cnpj,
		dcrt.dt_vencimento,
		case 
			when dcrt.dt_liquidacao is null
		and id_ativo in ('1','2','3')
		and dcrt.dt_emissao::date >='2020-05-01' then dcrtl.dt_liquidacao
		else dcrt.dt_liquidacao
	end as dt_liquidacao	
from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join (select cd_cliente,dt_vencimento, dt_liquidacao,id_ativo,dt_emissao,nu_titulo,ID_COBRANCA,nu_parcela,cd_empresa from speedy_dc.rcb_titulo) dcrt 
on dcrt.cd_cliente = dccc.cd_cliente
left join (select nu_titulo,nu_parcela,cd_empresa,dt_liquidacao from speedy_dc.rcb_titulo_liquidacao) dcrtl on
		dcrt.nu_titulo = dcrtl.nu_titulo
	and dcrt.nu_parcela = dcrtl.nu_parcela
	and dcrt.cd_empresa = dcrtl.cd_empresa
left join (select nu_titulo,nu_parcela,cd_empresa from speedy_dc.rel_titulo_orig_reparcelamento) dcrtor on
		dcrt.nu_titulo = dcrtor.nu_titulo
	and dcrt.nu_parcela = dcrtor.nu_parcela
	and dcrt.cd_empresa = dcrtor.cd_empresa
where
		dt_vencimento::date < now()
	and (id_ativo in ('1')
		and dt_emissao::date >'2012-08-03'
		or id_ativo in ('2','3')
			and dt_emissao::date >='2020-05-01')
	
	and ID_COBRANCA in ('0','26')
	and (dcrtor.nu_titulo is null or dcrtor.nu_titulo is not null and id_ativo in ('1')))total;
create index if not exists idx__maximo_atraso on maximo_atraso (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists atraso156;

select
	nu_cpf_cnpj,
	dt_vencimento,
	dt_liquidacao
	into
	temp table atraso156
from
	maximo_atraso
where 
	(dt_liquidacao::date is not null or (dt_liquidacao::date is null and (now()::date - dt_vencimento::date)>22));

create index if not exists idx__atraso156 on atraso156 (nu_cpf_cnpj);
---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists atraso_maximo_final;

select
	nu_cpf_cnpj,
	dt_liquidacao,
	max (case 
		when dt_liquidacao::date is not null then dt_liquidacao::date - dt_vencimento::date
		else now()::date - dt_vencimento::date
	end) as max_atraso
	into temp table atraso_maximo_final
from
	atraso156
group by
	1,
	2;
create index if not exists idx__atraso_maximo_final on atraso_maximo_final (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists maximo_atraso2;

select 
	distinct 
	nu_cpf_cnpj,
	max_atraso,
	max(now()::date - dt_liquidacao::date) as ultimaliquidacao,
	max(dt_liquidacao::date) as dt_liquidacao
	into
	temp table maximo_atraso2
from
	atraso_maximo_final
where
	max_atraso::int>'22'
	and ((now()::date - dt_liquidacao::date) <'360' or dt_liquidacao is null)
	and nu_cpf_cnpj is not null
group by
	1,
	2;
create index if not exists idx__maximo_atraso2 on maximo_atraso2 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists atraso_maximo_final2;

select
	nu_cpf_cnpj,
	dt_liquidacao,
	max (case 
		when dt_liquidacao::date is not null then dt_liquidacao::date - dt_vencimento::date
		else now()::date - dt_vencimento::date
	end) as max_atraso
into temp table atraso_maximo_final2
from
	atraso156
group by
	1,
	2;

create index if not exists idx__atraso_maximo_final2 on atraso_maximo_final2 (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists maximo_atraso3;
select 
	distinct 
	nu_cpf_cnpj,
	max_atraso,
	min(now()::date - dt_liquidacao::date) as ultimaliquidacao,
	max(dt_liquidacao::date) as dt_liquidacao
	into
	temp table maximo_atraso3
from
	atraso_maximo_final2
where
	max_atraso::int>'22'
	and (now()::date - dt_liquidacao::date<'360' or dt_liquidacao is null)
	and nu_cpf_cnpj is not null
group by
	1,
	2;
create index if not exists idx__maximo_atraso3 on maximo_atraso3 (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists maximo1;
select
	maximo_atraso2.nu_cpf_cnpj,
	max(maximo_atraso2.max_atraso) atraso_maximo
	into
	temp table maximo1
from
	maximo_atraso2
left join maximo_atraso3 on
	  maximo_atraso2.nu_cpf_cnpj = maximo_atraso3.nu_cpf_cnpj
group by
		1;
create index if not exists idx__maximo1 on maximo1 (nu_cpf_cnpj);

drop table if exists max_atraso_final;
select
	maximo1.nu_cpf_cnpj,
	maximo1.atraso_maximo,
	case
		when maximo1.atraso_maximo::int is null then (select * from atraso_maximo_01)
		when maximo1.atraso_maximo::int = 0 then (select * from atraso_maximo_02)
		when maximo1.atraso_maximo::int < 5 then (select * from atraso_maximo_03)
		when maximo1.atraso_maximo::int < 10 then (select * from atraso_maximo_04)
		when maximo1.atraso_maximo::int < 15 then (select * from atraso_maximo_05)
		when maximo1.atraso_maximo::int < 20 then (select * from atraso_maximo_06)
		when maximo1.atraso_maximo::int < 30 then (select * from atraso_maximo_07)
		when maximo1.atraso_maximo::int < 40 then (select * from atraso_maximo_08)
		when maximo1.atraso_maximo::int < 50 then (select * from atraso_maximo_09)
		when maximo1.atraso_maximo::int < 60 then (select * from atraso_maximo_10)
		when maximo1.atraso_maximo::int < 90 then (select * from atraso_maximo_11)
		when maximo1.atraso_maximo::int < 120 then (select * from atraso_maximo_12)
		else (select * from atraso_maximo_13)
	end as pontuacao_max_atraso,	
	coalesce(min(maximo_atraso3.ultimaliquidacao), 0) as ultimaliquidacao,
	case
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int is null then (select * from ulti_liqui_atraso_01)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int = 0 then (select * from ulti_liqui_atraso_10)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 30 then (select * from ulti_liqui_atraso_02)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 60 then (select * from ulti_liqui_atraso_03)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 180 then (select * from ulti_liqui_atraso_04)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 270 then (select * from ulti_liqui_atraso_05)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 360 then (select * from ulti_liqui_atraso_06)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 428 then (select * from ulti_liqui_atraso_07)
		when coalesce(min(maximo_atraso3.ultimaliquidacao), 0)::int < 540 then (select * from ulti_liqui_atraso_08)
		else (select * from ulti_liqui_atraso_09)
	end as pontuacao_ultima_liqui_atraso
	into temp table max_atraso_final
from
	maximo1
left join maximo_atraso3 on
	maximo1.nu_cpf_cnpj = maximo_atraso3.nu_cpf_cnpj
	and maximo1.atraso_maximo = maximo_atraso3.max_atraso
where
	maximo1.atraso_maximo >'22'
	and maximo1.nu_cpf_cnpj is not null
group by
	1,
	2;
create index if not exists idx__max_atraso_final on max_atraso_final (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Atraso Valor xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
drop table if exists maximo_atraso_valor;

select * 
into temp table maximo_atraso_valor
from (select
		dscc.nu_cpf_cnpj,
		dsrt.dt_vencimento,
		vl_titulo,
		case 
			when dsrt.dt_liquidacao is null	and id_ativo in ('1','2','3') and dsrt.dt_emissao::date >='2020-05-01' 
			then dsrtl.dt_liquidacao
		else dsrt.dt_liquidacao
	end as dt_liquidacao
	from final_liquidacao_parcelado dsscc
left join lateral (select nu_cpf_cnpj,cd_cliente from restricted.speedy_ds__cad_cliente) dscc on dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
left join speedy_ds.rcb_titulo dsrt 
on dsrt.cd_cliente = dscc.cd_cliente
left join speedy_ds.rcb_titulo_liquidacao dsrtl on
		dsrt.nu_titulo = dsrtl.nu_titulo
	and dsrt.nu_parcela = dsrtl.nu_parcela
	and dsrt.cd_empresa = dsrtl.cd_empresa
left join speedy_ds.rel_titulo_orig_reparcelamento dsrtor on
		dsrt.nu_titulo = dsrtor.nu_titulo
	and dsrt.nu_parcela = dsrtor.nu_parcela
	and dsrt.cd_empresa = dsrtor.cd_empresa
where
	dsrt.dt_emissao::date >'2012-08-03'
	and dt_vencimento::date < now()
	and (id_ativo in ('1')
		and dt_emissao::date >'2012-08-03'
		or id_ativo in ('2','3')
			and dt_emissao::date >='2020-05-01')
	and ID_COBRANCA in ('0','26')
	and (dsrtor.nu_titulo is null or dsrtor.nu_titulo is not null and id_ativo in ('1'))
	and ((now()::date - dsrt.dt_liquidacao::date)<'360' or dsrt.dt_liquidacao::date is null)
	and (dsrt.dt_liquidacao::date>dsrt.dt_vencimento::date or dsrt.dt_liquidacao::date is null)
	
union all

select
		dccc.nu_cpf_cnpj,
		dcrt.dt_vencimento,
		vl_titulo,
		case 
			when dcrt.dt_liquidacao is null
		and id_ativo in ('1','2','3')
		and dcrt.dt_emissao::date >='2020-05-01' then dcrtl.dt_liquidacao
		else dcrt.dt_liquidacao
	end as dt_liquidacao
	
from final_liquidacao_parcelado dcscc
left join (select nu_cpf_cnpj,cd_cliente from restricted.speedy_dc__cad_cliente) dccc on dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
left join speedy_dc.rcb_titulo dcrt 
on dcrt.cd_cliente = dccc.cd_cliente
left join (select nu_titulo,nu_parcela, cd_empresa,dt_liquidacao from speedy_dc.rcb_titulo_liquidacao) dcrtl on
		dcrt.nu_titulo = dcrtl.nu_titulo
	and dcrt.nu_parcela = dcrtl.nu_parcela
	and dcrt.cd_empresa = dcrtl.cd_empresa
left join (select nu_titulo,nu_parcela, cd_empresa from speedy_dc.rel_titulo_orig_reparcelamento) dcrtor on
		dcrt.nu_titulo = dcrtor.nu_titulo
	and dcrt.nu_parcela = dcrtor.nu_parcela
	and dcrt.cd_empresa = dcrtor.cd_empresa
where
		dcrt.dt_emissao::date >'2012-08-03'
	and dt_vencimento::date < now()
	and (id_ativo in ('1')
		and dt_emissao::date >'2012-08-03'
		or id_ativo in ('2','3')
			and dt_emissao::date >='2020-05-01')
	and ID_COBRANCA in ('0','26')	
	and (dcrtor.nu_titulo is null or dcrtor.nu_titulo is not null and id_ativo in ('1'))
	and ((now()::date - dcrt.dt_liquidacao::date)<'360' or dcrt.dt_liquidacao::date is null)
	and (dcrt.dt_liquidacao::date > dcrt.dt_vencimento::date or dcrt.dt_liquidacao::date is null)
	)total;

create index if not exists idx__maximo_atraso_valor on maximo_atraso_valor (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


drop table if exists base_atraso_valor;

select
	nu_cpf_cnpj,
	sum(vl_titulo::float8) as vl_titulo
	into
	temp table base_atraso_valor
from
	maximo_atraso_valor
	where (dt_liquidacao::date > dt_vencimento::date or dt_liquidacao::date is null)
	and ((dt_liquidacao::date - dt_vencimento::date)>22 or (dt_liquidacao::date is null and (now()::date - dt_vencimento::date )>22))--and ((dt_liquidacao::date - dt_vencimento::date)>22 or dt_liquidacao::date is null)
	group by 1
	order by 1;
create index if not exists idx__atraso157 on base_atraso_valor (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pontu_liquidado_atraso;
select
	max_atraso_final.nu_cpf_cnpj,
	sum(base_atraso_valor.vl_titulo) as liquidado_atraso_valor,
	case
		when sum(vl_titulo) is null then (select * from liqui_atraso_valor_01)
		when sum(vl_titulo) < 600 then (select * from liqui_atraso_valor_02)
		when sum(vl_titulo) < 1600 then (select * from liqui_atraso_valor_03)
		when sum(vl_titulo) < 3200 then (select * from liqui_atraso_valor_04)
		when sum(vl_titulo) < 5800 then (select * from liqui_atraso_valor_05)
		when sum(vl_titulo) < 10000 then (select * from liqui_atraso_valor_06)
		when sum(vl_titulo) < 16000 then (select * from liqui_atraso_valor_07)
		when sum(vl_titulo) < 28000 then (select * from liqui_atraso_valor_08)
		else (select * from liqui_atraso_valor_09)
	end as pontuacao_ultima_liqui_valor
	into temp table pontu_liquidado_atraso
	from
	max_atraso_final
left join base_atraso_valor on
	max_atraso_final.nu_cpf_cnpj = base_atraso_valor.nu_cpf_cnpj
	where base_atraso_valor.vl_titulo::float8>0
	--and base_atraso.nu_cpf_cnpj='07.392.704/0001-04'
group by 1;
create index if not exists idx__atraso_pontu_liquidado_atraso on pontu_liquidado_atraso (nu_cpf_cnpj);
--create index if not exists idx__atraso_maximo_final_valor on atraso_maximo_final_valor (nu_cpf_cnpj);


/*--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

select
	nu_cpf_cnpj,
	sum(vl_titulo) as liquidado_atraso_valor,
	case
		when sum(vl_titulo) is null then (select * from liqui_atraso_valor_01)
		when sum(vl_titulo) < 600 then (select * from liqui_atraso_valor_02)
		when sum(vl_titulo) < 1600 then (select * from liqui_atraso_valor_03)
		when sum(vl_titulo) < 3200 then (select * from liqui_atraso_valor_04)
		when sum(vl_titulo) < 5800 then (select * from liqui_atraso_valor_05)
		when sum(vl_titulo) < 10000 then (select * from liqui_atraso_valor_06)
		when sum(vl_titulo) < 16000 then (select * from liqui_atraso_valor_07)
		when sum(vl_titulo) < 28000 then (select * from liqui_atraso_valor_08)
		else (select * from liqui_atraso_valor_09)
	end as pontuacao_ultima_liqui_valor
	into temp table pontu_liquidado_atraso
	from maximo_atraso28
	where (ultimaliquidacao::int<'360' or ultimaliquidacao is null)
	and max_atraso::int>'22'
	group by 1;*/
--create index if not exists idx__atraso_pontu_liquidado_atraso on pontu_liquidado_atraso (nu_cpf_cnpj);
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx unificacao atraso xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists score_atraso_final;	
select
	max_atraso_final.*,
	pontu_liquidado_atraso.liquidado_atraso_valor,
	pontu_liquidado_atraso.pontuacao_ultima_liqui_valor,
	case 
		when (pontu_liquidado_atraso.liquidado_atraso_valor/baseunificada6.liquidado_parcelado)<0.02 then 0
		when (pontu_liquidado_atraso.liquidado_atraso_valor/baseunificada6.liquidado_parcelado)<0.05 then (pontuacao_max_atraso + pontuacao_ultima_liqui_atraso + pontuacao_ultima_liqui_valor)/4
	when (pontu_liquidado_atraso.liquidado_atraso_valor/baseunificada6.liquidado_parcelado)<0.1 then (pontuacao_max_atraso + pontuacao_ultima_liqui_atraso + pontuacao_ultima_liqui_valor)/2
	else (pontuacao_max_atraso + pontuacao_ultima_liqui_atraso + pontuacao_ultima_liqui_valor)
	end as  score_liquidacao_atraso
	into temp table score_atraso_final
from
	max_atraso_final
left join pontu_liquidado_atraso on
	max_atraso_final.nu_cpf_cnpj = pontu_liquidado_atraso.nu_cpf_cnpj
left join baseunificada6 on
	max_atraso_final.nu_cpf_cnpj = baseunificada6.nu_cpf_cnpj;
create index if not exists idx__score_atraso_final on score_atraso_final (nu_cpf_cnpj);
/*drop table if exists score_atraso_final;

select
	max_atraso_final.*,
	pontu_liquidado_atraso.liquidado_atraso_valor,
	pontu_liquidado_atraso.pontuacao_ultima_liqui_valor,
	(pontuacao_max_atraso + pontuacao_ultima_liqui_atraso + pontuacao_ultima_liqui_valor) score_liquidacao_atraso
	into temp table score_atraso_final
from
	max_atraso_final
left join pontu_liquidado_atraso on
	max_atraso_final.nu_cpf_cnpj = pontu_liquidado_atraso.nu_cpf_cnpj;
create index if not exists idx__score_atraso_final on score_atraso_final (nu_cpf_cnpj);*/
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx unificação atraso com Base principal xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists baseunificada7;
select
	baseunificada6.*,
	score_atraso_final.atraso_maximo,
	score_atraso_final.pontuacao_max_atraso,
	score_atraso_final.ultimaliquidacao,
	score_atraso_final.pontuacao_ultima_liqui_atraso,
	score_atraso_final.liquidado_atraso_valor,
	score_atraso_final.pontuacao_ultima_liqui_valor,
	score_atraso_final.score_liquidacao_atraso
	into temp table baseunificada7
from
	baseunificada6
left join score_atraso_final on
	baseunificada6.nu_cpf_cnpj = score_atraso_final.nu_cpf_cnpj;
create index if not exists idx__baseunificada7 on baseunificada7 (nu_cpf_cnpj);

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Primeira Emissão xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists pontu_tempo_primeira_compra;
select
	nu_cpf_cnpj,
	now()::date - min(dt_emissao::date) recencia_primeira_emissao,
	case
		when now()::date - min(dt_emissao::date) < 180 then (select * from primeira_emissao_01)
		when now()::date - min(dt_emissao::date) < 365 then (select * from primeira_emissao_02)
		when now()::date - min(dt_emissao::date) < 730 then (select * from primeira_emissao_03)
		when now()::date - min(dt_emissao::date) < 1460 then (select * from primeira_emissao_04)
		when now()::date - min(dt_emissao::date) < 2920 then (select * from primeira_emissao_05)
		when now()::date - min(dt_emissao::date) < 3650 then (select * from primeira_emissao_06)
		else (select * from primeira_emissao_07)
	end as tempo_primeira_compra
	into temp table pontu_tempo_primeira_compra
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_emissao::date
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente,dt_emissao from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	where
		dsscc.nu_cpf_cnpj is not null
	union all
	select
		dcscc.nu_cpf_cnpj,
		dt_emissao::date
		from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente,dt_emissao from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	/*from
			speedy_dc.rcb_titulo dcrt
	left join restricted.speedy_dc__cad_cliente dccc on
			dcrt.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	where
		dcscc.nu_cpf_cnpj is not null) total
		where dt_emissao::date>'1980-01-01'
		group by 1;

create index if not exists idx__pontu_tempo_primeira_compra on pontu_tempo_primeira_compra (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxunificação tempo primeira compra com base final xxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists baseunificada8;
select
	baseunificada7.*,
	pontu_tempo_primeira_compra.recencia_primeira_emissao,
	pontu_tempo_primeira_compra.tempo_primeira_compra
	into temp table baseunificada8
from
	baseunificada7
left join pontu_tempo_primeira_compra on
	baseunificada7.nu_cpf_cnpj = pontu_tempo_primeira_compra.nu_cpf_cnpj;
	
create index if not exists idx__baseunificada8 on baseunificada8 (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx SCORE FINAL xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--create table if not exists sbox__financeiro.pontuacao_limite_n as 

drop table if exists baseunificada9;
select nu_cpf_cnpj,
coalesce (score_liquidacao::float8,0) as score_liquidacao,
coalesce (score_outras_formas_de_pg::float8,0) as score_outras_formas_de_pg,
coalesce (score_protesto::float8,0) as score_protesto,
coalesce (score_cheque::float8,0) as score_cheque,
coalesce (score_pfin::float8,0) as score_pfin,
coalesce (score_desconto::float8,0) as score_desconto,
coalesce (pontuacao_idade::float8,0) as score_idade,
coalesce (score_liquidacao_atraso::float8,0) as score_atraso,
coalesce (tempo_primeira_compra::int,0) as tempo_primeira_compra,
(coalesce (score_liquidacao,0) + coalesce (score_outras_formas_de_pg,0) + coalesce (score_protesto,0) + 
coalesce (score_cheque,0) +coalesce (score_pfin,0) +coalesce (score_desconto,0) + 
coalesce (pontuacao_idade,0) +coalesce (score_liquidacao_atraso,0) +coalesce (tempo_primeira_compra,0) ) as score_final
into temp table baseunificada9
from baseunificada8;

create index if not exists idx__baseunificada9 on baseunificada9 (nu_cpf_cnpj);	
--where nu_cpf_cnpj ='009.124.350-54'; --251.530.228-97

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Adicionar Ticket Medio Parcelado xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
/*Script ja criado com o valor do ticket medio e com a regra de somar apenas se o cliente tiver compra 3 ou mais meses.*/

drop table if exists ticket_medio;
-- aqui é a criação da base com os valores de compras por mês.	
select
	nu_cpf_cnpj,
	concat(extract (month from dt_liquidacao::date),
	'-', extract (year from dt_liquidacao::date)) as dt_liquidacao,
	sum(vl_liquidacao::float8) liquidacao
	into temp table ticket_medio
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dsrt.vl_liquidacao
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,ID_COBRANCA,ID_liquidacao from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	/*from
		speedy_ds.rcb_titulo dsrt
	left join restricted.speedy_ds__cad_cliente dscc on
		dsrt.cd_cliente = dscc.cd_cliente
	left join liquidadoparcelado_baselimite dsscc on
		dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj*/
	where
		dsrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
		--and dt_vencimento::date < dt_liquidacao::date
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dcrt.vl_liquidacao
		from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,ID_COBRANCA,ID_liquidacao from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	/*from
		speedy_dc.rcb_titulo dcrt
	left join restricted.speedy_dc__cad_cliente dccc on
		dcrt.cd_cliente = dccc.cd_cliente
	left join liquidadoparcelado_baselimite dcscc on
		dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj*/
	where
		dcrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('0','26')
		and ID_liquidacao in ('0','26','60','4','11','19','47','53','54''57','58')
		--and dt_vencimento::date < dt_liquidacao::date
	) total
group by
	1,
	2;
create index if not exists idx__ticket_medio on ticket_medio (nu_cpf_cnpj);	
-- Criação do ticket medio total de compras/qtd_meses com compras 

drop table if exists ticket_medio_parcelado;
select
	nu_cpf_cnpj,
	round(avg(liquidacao::numeric),2) ticket_medio
	into temp table ticket_medio_parcelado
from
	ticket_medio
group by
	1;
create index if not exists idx__ticket_medio_parcelado on ticket_medio_parcelado (nu_cpf_cnpj);
--Criação com a quantidade meses com venda no periodo de 18 meses	
drop table if exists qtd_compras;
select
	nu_cpf_cnpj,
	count (liquidacao) qtd_compras
	into temp table qtd_compras
	from
	ticket_medio
group by
	1;
-- Criação dos valores de ticket medio com a regra de contabilizar os ticket medios com 3 ou mais compras.
drop table if exists ticket_medio_parcelado_final;	
select
	ticket_medio_parcelado.nu_cpf_cnpj,
	case 
		when qtd_compras >=3 then ticket_medio
		else 0
	end as ticket_medio_parcelado
	into temp table ticket_medio_parcelado_final
from
	ticket_medio_parcelado
left join qtd_compras on
	qtd_compras.nu_cpf_cnpj = ticket_medio_parcelado.nu_cpf_cnpj;

create index if not exists idx__qtd_compras on qtd_compras (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx ticket medio outras formas de pagamento xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	--total de protesto,consulta recente dentro do protesto mais recente e total valor protesto
--data da ultima liquidação
drop table if exists ticket_medio_o;
select
	nu_cpf_cnpj,
	concat(extract (month from dt_liquidacao::date),
	'-', extract (year from dt_liquidacao::date)) as dt_liquidacao,
	sum(vl_liquidacao::float8) vl_liquidado
	into
	temp table ticket_medio_o
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dsrt.vl_liquidacao
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,ID_COBRANCA from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	where
		dsrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
		and dsrt.vl_liquidacao::float8>0
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dcrt.vl_liquidacao
	from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,ID_COBRANCA from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	where
		dcrt.dt_liquidacao::date between now() - interval'18 months' and now()
		and ID_COBRANCA in ('1','4','7','19','47','49','53','54','56','57','58','59')
		and dcrt.vl_liquidacao::float8>0
	) total
group by
	1,
	2;
create index if not exists idx__ticket_medio_o on ticket_medio_o (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists ticket_medio_outros;
select
	nu_cpf_cnpj,
	round((sum(vl_liquidado::numeric)/ 18), 2) ticket_medio_o
into
	temp table ticket_medio_outros
from
	ticket_medio_o
group by
	1;
--Criação com a quantidade meses com venda no periodo de 18 meses	
drop table if exists qtd_compras_o;
select
	nu_cpf_cnpj,
	count (vl_liquidado) qtd_compras
	into
	temp table qtd_compras_o
from
	ticket_medio_o
group by
	1;
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists ticket_medio_outros__final;
select
	ticket_medio_outros.nu_cpf_cnpj,
	case 
		when qtd_compras >= 3 then ticket_medio_O
		else 0
	end as ticket_medio_outras_formas
	into temp table ticket_medio_outros__final
from
	ticket_medio_outros
left join qtd_compras_o on
	qtd_compras_o.nu_cpf_cnpj = ticket_medio_outros.nu_cpf_cnpj;
create index if not exists idx__ticket_medio_outros on ticket_medio_outros (nu_cpf_cnpj);	
-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx recencia primeira compra xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
select nu_cpf_cnpj,
recencia_primeira_emissao
into temp table tempo_primeira_liquidacao
from (
select
	nu_cpf_cnpj,
	now()::date - min(dt_emissao::date) recencia_primeira_emissao
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_emissao::date
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,dt_emissao from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	where
		dsscc.nu_cpf_cnpj is not null
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_emissao::date
	from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao, vl_liquidacao,dt_emissao from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	where
		dcscc.nu_cpf_cnpj is not null) total
		where dt_emissao::date>'1980-01-01'
		group by 1) total;
create index if not exists idx__tempo_primeira_liquidacao on tempo_primeira_liquidacao (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxssssssssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxx Exposição Atual xxxxxxxxxxxxxxxxxxxxxxxsssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists expo_atual;
select
	nu_cpf_cnpj,
	sum(vl_titulo::float8) exposicao_atual
	into temp table expo_atual
from
	(
	select
		dsscc.nu_cpf_cnpj as nu_cpf_cnpj,
		vl_titulo::float8 as vl_titulo
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao,vl_titulo,id_ativo,ID_COBRANCA from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	where
		 dsrt.dt_liquidacao is null
		  and dsrt.id_ativo in ('1','2')
		and ID_COBRANCA in ('0','26')
union all
	select
		dcscc.nu_cpf_cnpj as nu_cpf_cnpj,
		vl_titulo::float8 as vl_titulo
	from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao,vl_titulo,id_ativo,ID_COBRANCA from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	where
		dcrt.dt_liquidacao is null
		and dcrt.id_ativo in ('1','2')
		and ID_COBRANCA in ('0','26')
		) total
group by
	nu_cpf_cnpj;
create index if not exists idx__expo_atual on expo_atual (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxExposição Maxima xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists exposicao_maxima_cli;

with exposicao_maxima as (
with maxima as (
select
	nu_cpf_cnpj,
	dt_emissao::date,
	dt_liquidacao::date,
	sum (case 
				when (dt_emissao::date between (date_trunc('month', now()))::date and (date_trunc('month', now()) + interval'1 month - 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()))::date and (date_trunc('month', now()) + interval'1 month - 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) + interval'1 month - 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) + interval'1 month - 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) + interval'1 month - 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		-- mes h0
		else'0'
	end) as exposicao_h0,
				
			sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'1 month')::date and (date_trunc('month', now())+ interval'- 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'1 month')::date and (date_trunc('month', now())+ interval'- 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now())+ interval'- 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now())+ interval'- 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now())+ interval'- 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h1,
	--mes h1
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'2 month')::date and (date_trunc('month', now()) - interval'1 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'2 month')::date and (date_trunc('month', now()) - interval'1 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'1 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'1 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'1 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h2,
	--mes h2
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'3 month')::date and (date_trunc('month', now()) - interval'2 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'3 month')::date and (date_trunc('month', now()) - interval'2 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'2 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'2 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'2 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h3,
	--mes h3
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'4 month')::date and (date_trunc('month', now()) - interval'3 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'4 month')::date and (date_trunc('month', now()) - interval'3 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'3 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'3 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'3 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h4,
	-- mes h4
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'5 month')::date and (date_trunc('month', now()) - interval'4 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'5 month')::date and (date_trunc('month', now()) - interval'4 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'4 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'4 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'4 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h5,
	-- mes h5
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'6 month')::date and (date_trunc('month', now()) - interval'5 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'6 month')::date and (date_trunc('month', now()) - interval'5 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'5 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'5 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'5 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h6,
	--mes h6
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'7 month')::date and (date_trunc('month', now()) - interval'6 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'7 month')::date and (date_trunc('month', now()) - interval'6 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'6 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'6 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'6 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h7,
	--mes h7
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'8 month')::date and (date_trunc('month', now()) - interval'7 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'8 month')::date and (date_trunc('month', now()) - interval'7 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'7 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'7 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'7 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h8,
	--mes h8
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'9 month')::date and (date_trunc('month', now()) - interval'8 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'9 month')::date and (date_trunc('month', now()) - interval'8 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'8 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'8 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'8 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h9,
	--mes h9
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'10 month')::date and (date_trunc('month', now()) - interval'9 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'10 month')::date and (date_trunc('month', now()) - interval'9 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'9 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'9 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'9 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h10,
	--mes h10
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'11 month')::date and (date_trunc('month', now()) - interval'10 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'11 month')::date and (date_trunc('month', now()) - interval'10 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'10 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'10 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'10 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h11,
	--mes h11
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'12 month')::date and (date_trunc('month', now()) - interval'11 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'12 month')::date and (date_trunc('month', now()) - interval'11 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'11 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'11 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'11 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h12,
	--mes h12
					
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'13 month')::date and (date_trunc('month', now()) - interval'12 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'13 month')::date and (date_trunc('month', now()) - interval'12 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'12 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'12 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'12 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h13,
	-- mes h13
					
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'14 month')::date and (date_trunc('month', now()) - interval'13 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'14 month')::date and (date_trunc('month', now()) - interval'13 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'13 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'13 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'13 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h14,
	-- mes h14
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'15 month')::date and (date_trunc('month', now()) - interval'14 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'15 month')::date and (date_trunc('month', now()) - interval'14 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'14 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'14 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'14 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h15,
	-- mes h15
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'16 month')::date and (date_trunc('month', now()) - interval'15 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'16 month')::date and (date_trunc('month', now()) - interval'15 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'15 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'15 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'15 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h16,
	-- mes h16
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'17 month')::date and (date_trunc('month', now()) - interval'16 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'17 month')::date and (date_trunc('month', now()) - interval'16 month + 1 day')::date)
		or 
					 (dt_emissao::date <=(date_trunc('month', now()) - interval'16 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'16 month + 1 day')::date
		or
					 (dt_emissao::date <=(date_trunc('month', now()) - interval'16 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h17,
	-- mes h17
					 
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'18 month')::date and (date_trunc('month', now()) - interval'17 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'18 month')::date and (date_trunc('month', now()) - interval'17 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'17 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'17 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'17 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h18,
	-- mes h18
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'19 month')::date and (date_trunc('month', now()) - interval'18 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'19 month')::date and (date_trunc('month', now()) - interval'18 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'18 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'18 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'18 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h19,
	-- mes h19
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'20 month')::date and (date_trunc('month', now()) - interval'19 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'20 month')::date and (date_trunc('month', now()) - interval'19 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'19 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'19 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'19 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h20,
	-- mes h20
				
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'21 month')::date and (date_trunc('month', now()) - interval'20 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'21 month')::date and (date_trunc('month', now()) - interval'20 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'20 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'20 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'20 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h21,
	-- mes h21
					 
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'22 month')::date and (date_trunc('month', now()) - interval'21 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'22 month')::date and (date_trunc('month', now()) - interval'21 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'21 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'21 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'21 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h22,
	-- mes h22
					 
	sum (case
		when (dt_emissao::date between (date_trunc('month', now()) - interval'23 month')::date and (date_trunc('month', now()) - interval'22 month + 1 day')::date)
		or 
					 (dt_liquidacao::date between (date_trunc('month', now()) - interval'23 month')::date and (date_trunc('month', now()) - interval'22 month + 1 day')::date)
		or 
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'22 month + 1 day')::date
		and dt_liquidacao::date>(date_trunc('month', now()) - interval'22 month + 1 day')::date
		or
					 (dt_emissao::date <= (date_trunc('month', now()) - interval'22 month + 1 day')::date)
		and dt_liquidacao is null) then vl_titulo::float8
		else'0'
	end) as exposicao_h23
	-- mes h23
from
	(
	select
		dsscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dt_emissao::date,
		dsrt.vl_titulo
	from
	liquidadoparcelado_baselimite dsscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_ds__cad_cliente) dscc on
			dsscc.nu_cpf_cnpj = dscc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao,vl_titulo,dt_emissao,id_ativo,ID_COBRANCA from speedy_ds.rcb_titulo) dsrt on 
	dsrt.cd_cliente = dscc.cd_cliente
	where
		ID_COBRANCA in ('0','26','6','29')
		and id_ativo ='1'
union all
	select
		dcscc.nu_cpf_cnpj,
		dt_liquidacao::date,
		dt_emissao::date,
		dcrt.vl_titulo
	from
	liquidadoparcelado_baselimite dcscc
	left join (select cd_cliente,nu_cpf_cnpj from restricted.speedy_dc__cad_cliente) dccc on
			dcscc.nu_cpf_cnpj = dccc.nu_cpf_cnpj
	left join (select cd_cliente, dt_liquidacao,vl_titulo,dt_emissao,id_ativo,ID_COBRANCA from speedy_dc.rcb_titulo) dcrt on 
	dcrt.cd_cliente = dccc.cd_cliente
	where
		ID_COBRANCA in ('0','26','6','29')
		and id_ativo ='1'
		
	) total
group by
	1,
	2,
	3)
select 
	nu_cpf_cnpj,
	sum(exposicao_h0) as exposicao_h0,
	sum(exposicao_h1) as exposicao_h1,
	sum(exposicao_h2) as exposicao_h2,
	sum(exposicao_h3) as exposicao_h3,
	sum(exposicao_h4) as exposicao_h4,
	sum(exposicao_h5) as exposicao_h5,
	sum(exposicao_h6) as exposicao_h6,
	sum(exposicao_h7) as exposicao_h7,
	sum(exposicao_h8) as exposicao_h8,
	sum(exposicao_h9) as exposicao_h9,
	sum(exposicao_h10) as exposicao_h10,
	sum(exposicao_h11) as exposicao_h11,
	sum(exposicao_h12) as exposicao_h12,
	sum(exposicao_h13) as exposicao_h13,
	sum(exposicao_h14) as exposicao_h14,
	sum(exposicao_h15) as exposicao_h15,
	sum(exposicao_h16) as exposicao_h16,
	sum(exposicao_h17) as exposicao_h17,
	sum(exposicao_h18) as exposicao_h18,
	sum(exposicao_h19) as exposicao_h19,
	sum(exposicao_h20) as exposicao_h20,
	sum(exposicao_h21) as exposicao_h21,
	sum(exposicao_h22) as exposicao_h22,
	sum(exposicao_h23) as exposicao_h23
from
	maxima
group by
	nu_cpf_cnpj
	)
select
	nu_cpf_cnpj,
	greatest(exposicao_h0,
exposicao_h1,
exposicao_h2,
exposicao_h3,
exposicao_h4,
exposicao_h5,
exposicao_h6,
exposicao_h7,
exposicao_h8,
exposicao_h9,
exposicao_h10,
exposicao_h11,
exposicao_h12,
exposicao_h13,
exposicao_h14,
exposicao_h15,
exposicao_h16,
exposicao_h17,
exposicao_h18,
exposicao_h19,
exposicao_h20,
exposicao_h21,
exposicao_h22,
exposicao_h23) as exposicao_maxima
into temp table exposicao_maxima_cli
from
	exposicao_maxima;
create index if not exists idx__exposicao_maxima_cli on exposicao_maxima_cli (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Unificação score com ticket medio xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
--criação das variaveis diferença exposição maxima e cliente sem restrição

drop table if exists base_fixa_limites3;
select
	baseunificada9.nu_cpf_cnpj,
	score_final,
	liquidadoparcelado_baselimite.liquidado_parcelado,
	coalesce (ticket_medio_parcelado_final.ticket_medio_parcelado,
	0) as ticket_medio_parcelado,
	coalesce (ticket_medio_outros__final.ticket_medio_outras_formas,
	0) as ticket_medio_outras_formas,
	coalesce (expo_atual.exposicao_atual,0) as exposicao_atual,
	coalesce (exposicao_maxima_cli.exposicao_maxima,0)as exposicao_maxima,
	coalesce (tempo_primeira_liquidacao.recencia_primeira_emissao,
	0) as tempo_primeira_compra,
	case when score_final < 1.7 then coalesce (exposicao_maxima_cli.exposicao_maxima,0) - coalesce (pontu_liquidado_atraso.liquidado_atraso_valor,0)
	else 0
	end as diferença_exposicao_max_pago_atraso,
	case
		when score_protesto = 0
		and score_cheque = 0
		and score_pfin = 0 then 1
		else 0
	end cliente_nao_tem_restricao_externa,
	case
		when score_final < -134.25 then'10 - Risco Eminente'
		when score_final < -49.50 then'09 - Risco Alto'
		when score_final < 1.70 then'08 - Risco Medio'
		when score_final < 17.25 then'07 - Risco Aparente'
		when score_final < 25.25 then'06 - Bronze'
		when score_final < 32.25 then'05 - Prata'
		when score_final < 42.75 then'04 - Ouro'
		when score_final < 50.75 then'03 - Platina'
		when score_final < 61.22 then'02 - Esmeralda'
		when score_final < 500 then'01 - Diamante'
		else'Sem Classificacao'
	end as Classificacao,
	case
		when score_final < -134.25 then 1000
		when score_final < -49.50 then 2000
		when score_final < 1.70 then 3000
		when score_final < 17.25 then 5000
		when score_final < 25.25 then 6000
		when score_final < 32.25 then 7000
		when score_final < 42.75 then 8000
		when score_final < 50.75 then 10000
		when score_final < 61.22 then 12000
		when score_final < 500 then 15000
		else 0
	end as Limite_minimo
into temp table base_fixa_limites3
from
	baseunificada9
left join ticket_medio_parcelado_final on
	baseunificada9.nu_cpf_cnpj = ticket_medio_parcelado_final.nu_cpf_cnpj
left join ticket_medio_outros__final on
	baseunificada9.nu_cpf_cnpj = ticket_medio_outros__final.nu_cpf_cnpj
left join expo_atual on
	baseunificada9.nu_cpf_cnpj = expo_atual.nu_cpf_cnpj
left join tempo_primeira_liquidacao on
	baseunificada9.nu_cpf_cnpj = tempo_primeira_liquidacao.nu_cpf_cnpj
left join liquidadoparcelado_baselimite on
	baseunificada9.nu_cpf_cnpj = liquidadoparcelado_baselimite.nu_cpf_cnpj
left join exposicao_maxima_cli on
	baseunificada9.nu_cpf_cnpj = exposicao_maxima_cli.nu_cpf_cnpj
left join pontu_liquidado_atraso on
	baseunificada9.nu_cpf_cnpj = pontu_liquidado_atraso.nu_cpf_cnpj;
create index if not exists idx__base_fixa_limites3 on base_fixa_limites3 (nu_cpf_cnpj);	
	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx limite variavel xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--Aqui começa a primeira regra de limite

drop table if exists primeira_regra_variaveis3;
select
	nu_cpf_cnpj,
	score_final,
	liquidado_parcelado,
	ticket_medio_parcelado,
	ticket_medio_outras_formas,
	exposicao_atual,
	exposicao_maxima,
	tempo_primeira_compra,
	case
		when diferença_exposicao_max_pago_atraso< 0 then 0
		else diferença_exposicao_max_pago_atraso
	end as diferença_exposicao_max_pago_atraso,
	cliente_nao_tem_restricao_externa,
	classificacao,
	limite_minimo,
		case
			when score_final < -134.25
		and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.3)+(1.5 * ticket_medio_outras_formas)), 2)
		when score_final < -134.25
		and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.3)+(1.25 * ticket_medio_outras_formas)), 2)
		when score_final < -49.50
		and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.3)+(1.5 * ticket_medio_outras_formas)), 2)
		when score_final < -49.50
		and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.3)+(1.25 * ticket_medio_outras_formas)), 2)
		when score_final < 1.70
		and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas)), 2)
		when score_final < 1.70
		and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.25 * ticket_medio_outras_formas)), 2)
		when score_final < 17.25
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.05)), 2)
		when score_final < 17.25
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(3.5 * 0.55)+(1.25 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.05)), 2)
		when score_final < 25.25
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.55)+(2 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.1)), 2)
		when score_final < 25.25
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(3.5 * 0.65)+(1.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.1)), 2)
		when score_final < 32.25
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.65)+(3 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.15)), 2)
		when score_final < 32.25
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(4 * 0.7)+(2 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.15)), 2)
		when score_final < 42.75
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(4 * 0.7)+(4 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.2)), 2)
		when score_final < 42.75
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(5 * 0.7)+(2.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.2)), 2)
		when score_final < 50.75
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(5.5 * 0.8)+(4.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.25)), 2)
		when score_final < 50.75
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(5.5 * 0.8)+(3 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.25)), 2)
		when score_final < 61.22
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(6.5 * 0.9)+(5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.3)), 2)
		when score_final < 61.22
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(6 * 0.9)+(3.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.3)), 2)
		when score_final < 500
		and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(6.5 * 0.95)+(5.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.35)), 2)
		when score_final < 500
		and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(6.5 * 0.95)+(4 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.35)), 2)
		else 0
	end "limite_calculo - primeira regra",
		case
		when ((case
			when score_final < -134.25
			and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas)), 2)
			when score_final < -134.25
			and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.25 * ticket_medio_outras_formas)), 2)
			when score_final < -49.50
			and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas)), 2)
			when score_final < -49.50
			and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.25 * ticket_medio_outras_formas)), 2)
			when score_final < 1.70
			and tempo_primeira_compra >= 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas)), 2)
			when score_final < 1.70
			and tempo_primeira_compra < 720 then round((ticket_medio_parcelado *(3.5 * 0.5)+(1.25 * ticket_medio_outras_formas)), 2)
			when score_final < 17.25
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.5)+(1.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.05)), 2)
			when score_final < 17.25
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(3.5 * 0.55)+(1.25 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.05)), 2)
			when score_final < 25.25
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.55)+(2 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.1)), 2)
			when score_final < 25.25
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(3.5 * 0.65)+(1.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.1)), 2)
			when score_final < 32.25
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(3.5 * 0.65)+(3 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.15)), 2)
			when score_final < 32.25
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(4 * 0.7)+(2 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.15)), 2)
			when score_final < 42.75
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(4 * 0.7)+(4 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.2)), 2)
			when score_final < 42.75
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(5 * 0.7)+(2.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.2)), 2)
			when score_final < 50.75
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(5 * 0.7)+(3 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.25)), 2)
			when score_final < 50.75
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(5 * 0.7)+(3 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.25)), 2)
			when score_final < 61.22
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(6.5 * 0.9)+(5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.3)), 2)
			when score_final < 61.22
			and tempo_primeira_compra < 720 then round(((ticket_medio_parcelado *(6 * 0.9)+(3.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.3)), 2)
			when score_final < 500
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(6.5 * 0.95)+(5.5 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.35)), 2)
			when score_final < 500
			and tempo_primeira_compra >= 720 then round(((ticket_medio_parcelado *(6.5 * 0.95)+(4 * ticket_medio_outras_formas))+(liquidado_parcelado * 0.35)), 2)
			else 0
		end) - exposicao_atual) < 0 then 1
		--quando for 1 é porque falta limite do calculo feito acima - exposição atual do cliente
		else 0
	end falta_limite
	into temp table primeira_regra_variaveis3
from
	base_fixa_limites3;
--where nu_cpf_cnpj='000.387.642-02';
create index if not exists idx__primeira_regra_variaveis3 on primeira_regra_variaveis3 (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx variavel falta limite complemento do resultado xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists base_completa_variaveis_limite;

select
	nu_cpf_cnpj,
	classificacao,
	score_final,
	liquidado_parcelado,
	ticket_medio_parcelado,
	ticket_medio_outras_formas,
	exposicao_atual,
	exposicao_maxima,
	tempo_primeira_compra,
	case 
		when score_final < -134.25 and cliente_nao_tem_restricao_externa ='1' then diferença_exposicao_max_pago_atraso
		when score_final < -134.25 and cliente_nao_tem_restricao_externa ='0' then (diferença_exposicao_max_pago_atraso*0.5)
		when score_final < -49.50 and cliente_nao_tem_restricao_externa ='1' then diferença_exposicao_max_pago_atraso
		when score_final < -49.50 and cliente_nao_tem_restricao_externa ='0' then (diferença_exposicao_max_pago_atraso*0.7)
		when score_final < 1.70 and cliente_nao_tem_restricao_externa ='1' then diferença_exposicao_max_pago_atraso
		when score_final < 1.70 and cliente_nao_tem_restricao_externa ='0' then (diferença_exposicao_max_pago_atraso*0.8)
		else 0
	end as var_diferença_exposicao_max_pago_atraso,
	cliente_nao_tem_restricao_externa,
	limite_minimo,
	"limite_calculo - primeira regra" as primeira_regra_limite,
	falta_limite
into temp table base_completa_variaveis_limite
from
	primeira_regra_variaveis3;
create index if not exists idx__base_completa_variaveis_limite on base_completa_variaveis_limite (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Calcular gol de mão xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists variavel_gol_de_mao3;
select
	nu_cpf_cnpj,
	classificacao,
	score_final,
	liquidado_parcelado,
	ticket_medio_parcelado,
	ticket_medio_outras_formas,
	exposicao_atual,
	exposicao_maxima,
	tempo_primeira_compra,
	case 
	when falta_limite ='1' then var_diferença_exposicao_max_pago_atraso+(3*ticket_medio_parcelado)
	else var_diferença_exposicao_max_pago_atraso
	end falta_limite_e_faixas_ruins,	
	case
		when score_final < -134.25 then 0--'10 - Risco Eminente'
		when score_final < -49.50 then 0--'09 - Risco Alto'
		when score_final < 1.70 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'08 - Risco Medio'
		when score_final < 1.70 and ticket_medio_parcelado>'0' then (exposicao_atual + (3*ticket_medio_parcelado)) --'08 - Risco Medio'
		when score_final < 17.25 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'07 - Risco Aparente'
		when score_final < 17.25 and ticket_medio_parcelado>'0' then (exposicao_atual + (3*ticket_medio_parcelado)) --'07 - Risco Aparente'
		when score_final < 25.25 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'06 - Bronze'
		when score_final < 25.25 and ticket_medio_parcelado>'0' then (exposicao_atual + (4*ticket_medio_parcelado)) --'06 - Bronze'
		when score_final < 32.25 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'05 - Prata'
		when score_final < 32.25 and ticket_medio_parcelado>'0' then (exposicao_atual + (4*ticket_medio_parcelado)) --'05 - Prata'
		when score_final < 42.75 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'04 - Ouro'
		when score_final < 42.75 and ticket_medio_parcelado>'0' then (exposicao_atual + (4.5*ticket_medio_parcelado)) --'04 - Ouro'
		when score_final < 50.75 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'03 - Platina'
		when score_final < 50.75 and ticket_medio_parcelado>'0' then (exposicao_atual + (5.5*ticket_medio_parcelado)) --'03 - Platina'
		when score_final < 61.22 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo) --'02 - Esmeralda'
		when score_final < 61.22 and ticket_medio_parcelado>'0' then (exposicao_atual + (5.5*ticket_medio_parcelado)) --'02 - Esmeralda'
		when score_final < 500 and ticket_medio_parcelado='0' then (exposicao_atual + limite_minimo)--'01 - Diamante'
		when score_final < 500 and ticket_medio_parcelado>'0' then (exposicao_atual + (5.5*ticket_medio_parcelado))--'01 - Diamante'
		else 0
	end as variavel_gol_de_mao,
	limite_minimo,
	primeira_regra_limite,
	falta_limite	
	into temp table variavel_gol_de_mao3
from
	base_completa_variaveis_limite;
create index if not exists idx__variavel_gol_de_mao3 on variavel_gol_de_mao3 (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx Resultado xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- primeira regra é primeira_regra_limite + falta_limite_e_faixas_ruins
-- limite_exp_mais_tmedio é a regra gol de mão -> variavel_gol_de_mao
drop table if exists limite_intermediario;
select
	nu_cpf_cnpj,
	classificacao,
	score_final,
	liquidado_parcelado,
	ticket_medio_parcelado,
	ticket_medio_outras_formas,
	exposicao_atual,
	variavel_gol_de_mao,
	limite_minimo,
	primeira_regra_limite,
	falta_limite_e_faixas_ruins,
	falta_limite,
	case
		when score_final>0
		and falta_limite ='1' then variavel_gol_de_mao
		when score_final>0
		and (primeira_regra_limite + falta_limite_e_faixas_ruins)<'5000' then 5000
		else (primeira_regra_limite + falta_limite_e_faixas_ruins)
	end as limite_intermediario
	into temp table limite_intermediario
from
	variavel_gol_de_mao3;
create index if not exists idx__limite_intermediario on limite_intermediario (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx acerto limite xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists acerto_limite;
select 
limite_intermediario.*,
case   	when score_final < -134.25 and limite_intermediario < (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --Risco Eminente'
		when score_final < -134.25 and limite_intermediario >= (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --Risco Eminente'
		when score_final < -49.50 and limite_intermediario < (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'09 - Risco Alto'
		when score_final < -49.50 and limite_intermediario >= (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'09 - Risco Alto'
		when score_final < 1.70 and limite_intermediario < (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'08 - Risco Medio'
		when score_final < 1.70 and limite_intermediario >= (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'08 - Risco Medio'
		when score_final < 17.25 and limite_intermediario<(exposicao_atual+(5.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'07 - Risco Aparente'
		when score_final < 17.25 and limite_intermediario>=(exposicao_atual+(5.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(5.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'07 - Risco Aparente'
		when score_final < 25.25 and limite_intermediario<(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'06 - Bronze'
		when score_final < 25.25 and limite_intermediario>=(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'06 - Bronze'
		when score_final < 32.25 and limite_intermediario<(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'05 - Prata'
		when score_final < 32.25 and limite_intermediario>=(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'05 - Prata'
		when score_final < 42.75 and limite_intermediario<(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'04 - Ouro'
		when score_final < 42.75 and limite_intermediario>=(exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(6*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'04 - Ouro'
		when score_final < 50.75 and limite_intermediario<(exposicao_atual+(6.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then limite_intermediario --'03 - Platina'
		when score_final < 50.75 and limite_intermediario>=(exposicao_atual+(6.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) then (exposicao_atual+(6.5*ticket_medio_parcelado)+(2.5*ticket_medio_outras_formas)) --'03 - Platina'
		when score_final < 61.22 and limite_intermediario<(exposicao_atual+(7*ticket_medio_parcelado)+(3*ticket_medio_outras_formas)) then limite_intermediario --'02 - Esmeralda'
		when score_final < 61.22 and limite_intermediario>=(exposicao_atual+(7*ticket_medio_parcelado)+(3*ticket_medio_outras_formas)) then (exposicao_atual+(7*ticket_medio_parcelado)+(3*ticket_medio_outras_formas)) --'02 - Esmeralda'
		when score_final < 500 and limite_intermediario<(exposicao_atual+(7.5*ticket_medio_parcelado)+(3.5*ticket_medio_outras_formas)) then limite_intermediario
		when score_final < 500 and limite_intermediario>=(exposicao_atual+(7.5*ticket_medio_parcelado)+(3.5*ticket_medio_outras_formas)) then (exposicao_atual+(7.5*ticket_medio_parcelado)+(3.5*ticket_medio_outras_formas))--'01 - Diamante'
		else 0
	end as acerto_limite
	into temp table acerto_limite
from limite_intermediario;
create index if not exists idx__acerto_limite on acerto_limite (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx verifica_valor_minimo xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists verifica_valor_minimo;
select
	*,
	case 
		when limite_intermediario <='5000' and score_final >'0' then 5000
		when limite_intermediario <='5000' and score_final <='0' then acerto_limite
		else limite_intermediario
	end as verifica_valor_minimo
	into temp table verifica_valor_minimo
	from
	acerto_limite;
create index if not exists idx__verifica_valor_minimo on verifica_valor_minimo (nu_cpf_cnpj);	
-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx limite acetado xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists limite_validacao_final;
select
	*,
	case 
		when limite_intermediario >= acerto_limite then verifica_valor_minimo
		else limite_intermediario
	end as limite_acertado
	into temp table limite_validacao_final -- limite_final_final_validacao
from
	verifica_valor_minimo;
create index if not exists idx__limite_validacao_final on limite_validacao_final (nu_cpf_cnpj);	
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxssssssssssssssssssxxxxxxxxxx limite final final xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
drop table if exists penultima_regra;
select
	nu_cpf_cnpj,
	classificacao,
	score_final,
	variavel_gol_de_mao,
	exposicao_atual,
	limite_minimo,
	primeira_regra_limite,
	limite_intermediario,
	acerto_limite,
	verifica_valor_minimo,
	limite_acertado,
	case 
		when limite_acertado <= limite_minimo then limite_minimo
		else limite_acertado
	end as limite_final_final
	into temp table penultima_regra
from
	limite_validacao_final;
create index if not exists idx__penultima_regra on penultima_regra (nu_cpf_cnpj);	

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--create table if not exists sbox__financeiro.limite_varejo_n as
drop table if exists pre_upsert;
select
	penultima_regra.nu_cpf_cnpj,
	penultima_regra.classificacao,	
	'varejo_CPF' as agrupamento,
	baseunificada9.score_liquidacao,
	baseunificada9.score_outras_formas_de_pg,
	baseunificada9.score_protesto,
	baseunificada9.score_pfin,
	baseunificada9.score_cheque,
	baseunificada9.score_desconto,
	baseunificada9.score_idade,
	baseunificada9.score_atraso,
	baseunificada9.tempo_primeira_compra,
	penultima_regra.score_final,
	ticket_medio_parcelado,
	ticket_medio_outras_formas,
	round(case 
		when penultima_regra.score_final> 0 and limite_final_final < variavel_gol_de_mao then variavel_gol_de_mao
		else limite_final_final
	end) limite_prod
into temp table pre_upsert --temp_upsert
from penultima_regra
left join baseunificada9 on
penultima_regra.nu_cpf_cnpj = baseunificada9.nu_cpf_cnpj
left join base_fixa_limites3 on
penultima_regra.nu_cpf_cnpj = base_fixa_limites3.nu_cpf_cnpj;
create index if not exists idx__pre_upsert on pre_upsert (nu_cpf_cnpj);	

---xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

drop table if exists temp_upsert;
select
pu.nu_cpf_cnpj,
classificacao,
agrupamento,
score_liquidacao,
score_outras_formas_de_pg,
score_protesto,
score_pfin,
score_cheque,
score_desconto,
score_idade,
score_atraso,
tempo_primeira_compra,
score_final,
ticket_medio_parcelado,
ticket_medio_outras_formas,
case
		when agrupamento = 'varejo_CPF' and recencia_primeira_emissao< 360 and ((coalesce (liquidado_parcelado,0)+coalesce(liquidado_outras_formas_pg,0))*2)>20000 then limite_prod
		when agrupamento = 'varejo_CPF' and recencia_primeira_emissao< 360 and limite_prod < 20000 then limite_prod
		when agrupamento = 'varejo_CPF' and recencia_primeira_emissao< 360 and ((coalesce (liquidado_parcelado,0)+coalesce(liquidado_outras_formas_pg,0))*2)<20000 then 20000
		else limite_prod
end as limite_producao,
	now() at time zone 'BRT' as load_datetime
into temp table temp_upsert
from pre_upsert pu
left join (select nu_cpf_cnpj,recencia_primeira_emissao,liquidado_parcelado, liquidado_outras_formas_pg from baseunificada8) pc on
pu.nu_cpf_cnpj = pc.nu_cpf_cnpj;
create index if not exists idx__temp_upsert on temp_upsert (nu_cpf_cnpj);

------------------------------------------------------------------------------------------------------
CREATE UNIQUE INDEX if not exists unique__restricted__reps__cliente_limite_credito ON restricted.reps__cliente_limite_credito USING btree (nu_cpf_cnpj);

------------------------------------------------------------------------------------------------------
insert into restricted.reps__cliente_limite_credito (nu_cpf_cnpj,classificacao,agrupamento,score_liquidacao,score_outras_formas_de_pg,score_protesto,score_pfin,score_cheque,score_desconto,score_idade,score_atraso,tempo_primeira_compra,score_final,ticket_medio_parcelado,ticket_medio_outras_formas,limite_producao,load_datetime)
select distinct
nu_cpf_cnpj,classificacao,agrupamento,score_liquidacao,score_outras_formas_de_pg,score_protesto,score_pfin,score_cheque,score_desconto,score_idade,score_atraso,tempo_primeira_compra,score_final,ticket_medio_parcelado,ticket_medio_outras_formas,limite_producao,load_datetime
from 
temp_upsert stg
where 
not exists 
(select 
1 
from 
restricted.reps__cliente_limite_credito lim
where 
stg.nu_cpf_cnpj	= lim.nu_cpf_cnpj					
and coalesce(stg.classificacao,'0') = coalesce(lim.classificacao,'0')
and coalesce(stg.agrupamento,'0') = coalesce(lim.agrupamento,'0')
and coalesce(stg.score_liquidacao,'0') = coalesce(lim.score_liquidacao,'0')
and coalesce(stg.score_outras_formas_de_pg,0) = coalesce(lim.score_outras_formas_de_pg,0)
and coalesce(stg.score_protesto,0) = coalesce(lim.score_protesto,0)
and coalesce(stg.score_pfin,0) = coalesce(lim.score_pfin,0)
and coalesce(stg.score_cheque,0) = coalesce(lim.score_cheque,0)
and coalesce(stg.score_desconto,0) = coalesce(lim.score_desconto,0)
and coalesce(stg.score_idade,0) = coalesce(lim.score_idade,0)   	
and coalesce(stg.score_atraso,0  ) = coalesce(lim.score_atraso,0)
and coalesce(stg.tempo_primeira_compra,0  ) = coalesce(lim.tempo_primeira_compra,0)
and coalesce(stg.score_final,0  ) = coalesce(lim.score_final,0)
and coalesce(stg.ticket_medio_parcelado,0  ) = coalesce(lim.ticket_medio_parcelado,0)
and coalesce(stg.ticket_medio_outras_formas,0  ) = coalesce(lim.ticket_medio_outras_formas,0)
and coalesce(stg.limite_producao,0) = coalesce(lim.limite_producao,0)
)
on conflict (nu_cpf_cnpj)
do update
set 
 nu_cpf_cnpj				=	excluded.nu_cpf_cnpj
,classificacao				=	excluded.classificacao
,agrupamento				=	excluded.agrupamento
,score_liquidacao			=	excluded.score_liquidacao
,score_outras_formas_de_pg	=	excluded.score_outras_formas_de_pg
,score_protesto				=	excluded.score_protesto
,score_pfin					=	excluded.score_pfin
,score_cheque				=	excluded.score_cheque
,score_desconto				=	excluded.score_desconto
,score_idade				=	excluded.score_idade
,score_atraso				=	excluded.score_atraso
,tempo_primeira_compra		=	excluded.tempo_primeira_compra
,score_final				=	excluded.score_final
,ticket_medio_parcelado		=	excluded.ticket_medio_parcelado
,ticket_medio_outras_formas	=	excluded.ticket_medio_outras_formas
,limite_producao			=	excluded.limite_producao
,load_datetime				=	excluded.load_datetime
;