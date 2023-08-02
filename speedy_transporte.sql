--------------------------------------------------------------------------------------------------
drop table if exists dados_itens;
create temporary table if not exists dados_itens as (
select 
	fp.nu_pedido,
	sum(
        case 
            when it.cd_produto in ('PUBLIPER','PUBLIBN','BRINBL','BRINBL','ACOMKT', 'ACOCOM') then 1 
            else 0 
        end
    ) as qtd_itens_acoes_mkt,
	sum(
        case 
            when tin.id_bonificado::float4::int4 = 0 then 1 
            else 0 end
        ) as tem_itens_venda,
	sum(
        case when cp.cd_grupo_produtos::float4::int4 = 3688 then 1 
        else 0 
    end) as tem_cadeira_odonto,
	sum(
        case when cp.cd_grupo_produtos::float4::int4 in (429, 995, 146, 4976, 5782, 4757, 4697, 1741, 4736, 2221, 1751, 4737) then 1 
        else 0 end
    ) as tem_equip_excecao
from 
    speedy_ds.fat_pedido fp
	inner join speedy_ds.ite_pedido it on it.nu_pedido = fp.nu_pedido
	inner join speedy_ds.ped_caixa cx on cx.nu_pedido = fp.nu_pedido
	inner join speedy_ds.cad_produto cp on cp.cd_produto = it.cd_produto
	inner join speedy_ds.cad_tipo_item_nota tin on tin.cd_tipo_item_nota = it.id_brinde
where 
    fp.cd_situacao::float4::int4 <> 9
    and cx.cd_situacao::float4::int4 <> 9
    and cx.dt_saida::date >= now() - interval '30 days'
    and cx.dt_saida::date <= now()::date
 group by fp.nu_pedido
);
create index if not exists dados_itens__qtd_itens_acoes_mkt on dados_itens using btree (qtd_itens_acoes_mkt);
create index if not exists dados_itens__tem_itens_venda on dados_itens using btree (tem_itens_venda);
create index if not exists dados_itens__tem_cadeira_odonto on dados_itens using btree (tem_cadeira_odonto);
create index if not exists dados_itens__tem_equip_excecao on dados_itens using btree (tem_equip_excecao);
create index if not exists dados_itens__nu_pedido on dados_itens using btree (nu_pedido);
--------------------------------------------------------------------------------------------------
drop table if exists ped_caixa_temp;
create temp table ped_caixa_temp as (
select 
	cx.nu_pedido
	,cx.nm_uf
	,cx.cd_servico_transportador::float::int
	,trim(replace(replace(replace(cx.nu_cep,'-',''),' ',''),'.',''))::int4 as nu_cep
from 
	dados_itens a 
	inner join speedy_ds.ped_caixa cx on a.nu_pedido=cx.nu_pedido
);
create index if not exists idx_ped_caixa_temp_nu_pedido on ped_caixa_temp USING btree (nu_pedido);
create index if not exists idx_ped_caixa_temp_nm_uf on ped_caixa_temp USING btree (nm_uf);
create index if not exists idx_ped_caixa_temp_cd_servico_transportador on ped_caixa_temp USING btree (cd_servico_transportador);
create index if not exists idx_ped_caixa_temp_nu_cep on ped_caixa_temp USING btree (nu_cep);
--------------------------------------------------------------------------------------------------
drop table if exists cidade_prazo_temp;
create temp table cidade_prazo_temp as (
select 
nu_dias_max::numeric(18,2)
,nu_dias_max_sg::numeric(18,2)
,cd_servico_transportador::float::int
,nm_uf
,trim(replace(replace(replace(nu_cep_inicio,'-',''),' ',''),'.',''))::int4 as nu_cep_inicio
,trim(replace(replace(replace(nu_cep_final,'-',''),' ',''),'.',''))::int4 as nu_cep_final
from speedy_ds.cidade_prazo
);
create index if not exists idx_cidade_prazo_temp_cd_servico_transportador on cidade_prazo_temp USING btree (cd_servico_transportador);
create index if not exists idx_cidade_prazo_temp_nm_uf on cidade_prazo_temp USING btree (nm_uf);
create index if not exists idx_cidade_prazo_temp_nu_cep_inicio on cidade_prazo_temp USING btree (nu_cep_inicio);
create index if not exists idx_cidade_prazo_temp_nu_cep_final on cidade_prazo_temp USING btree (nu_cep_final);
--------------------------------------------------------------------------------------------------
drop table if exists info_cidade_prazo;
create temporary table if not exists info_cidade_prazo as (
select 
    cx.nu_pedido, 
    max(pci.nu_dias_max) as nu_dias_max, 
    max(pci.nu_dias_max_sg) as nu_dias_max_sg
from 
       ped_caixa_temp cx
inner join cidade_prazo_temp pci on
       pci.cd_servico_transportador = cx.cd_servico_transportador 
       and pci.nm_uf = cx.nm_uf
where 
       cx.nu_cep between pci.nu_cep_inicio and pci.nu_cep_final 
       --and cx.nu_pedido ='3665155'
group by 
       cx.nu_pedido
);
create index if not exists info_cidade_prazo__nu_pedido on info_cidade_prazo using btree (nu_pedido);
create index if not exists info_cidade_prazo__nu_dias_max_sg on info_cidade_prazo using btree (nu_dias_max_sg);
create index if not exists info_cidade_prazo__nu_dias_max on info_cidade_prazo using btree (nu_dias_max);
--------------------------------------------------------------------------------------------------
drop table if exists pedidos_temp;
create temporary table if not exists pedidos_temp as (
select 
	cx.nu_pedido
	,min(cx.cd_ped_caixa::float4::int4) as cod_pri_exp_ped
from 
	dados_itens a 
	inner join speedy_ds.ped_caixa cx on a.nu_pedido=cx.nu_pedido
where 
	cx.cd_ped_caixa::float4::int4 > 0
	and cx.cd_situacao::float4::int4 <> 9

	--and cx.nu_pedido ='3665155'
group by 
	cx.nu_pedido
);
create index if not exists pedidos_temp__nu_pedido on pedidos_temp using btree (nu_pedido);
create index if not exists pedidos_temp__cod_pri_exp_ped on pedidos_temp using btree (cast(cod_pri_exp_ped as text));
--------------------------------------------------------------------------------------------------
drop table if exists pedido_coleta;
create temporary table if not exists pedido_coleta as (
select 
	cx.nu_pedido,
	cx.dt_expedicao::date as pri_expedicao_ped,
	ste.nm_servico_transportador as servico_coletou_encomenda
from 
	 pedidos_temp pri_exp_ped
inner join speedy_ds.ped_caixa cx on
cx.nu_pedido = pri_exp_ped.nu_pedido and cx.cd_ped_caixa = cast(pri_exp_ped.cod_pri_exp_ped as text)
inner join speedy_ds.cad_servico_transportador ste on
ste.cd_servico_transportador = cx.cd_servico_transportador
);
create index if not exists pedido_coleta__nu_pedido on pedido_coleta using btree (nu_pedido);
create index if not exists pedido_coleta__pri_expedicao_ped on pedido_coleta using btree (pri_expedicao_ped);
create index if not exists pedido_coleta__servico_coletou_encomenda on pedido_coleta using btree (servico_coletou_encomenda);
--------------------------------------------------------------------------------------------------
drop table if exists expedicoes;
create temporary table if not exists expedicoes as (
select 
	f1.nu_pedido
    ,case
     	when f1.cd_entrega::float4::int4 in (2, 3, 6) or coalesce(f1.cd_servico_cotacao::float4::int4, 0) = 0 then info_pri_exp_ped.pri_expedicao_ped::date
        else info_pri_exp_ped.pri_expedicao_ped::date
    end as pri_expedicao_ped,
    info_pri_exp_ped.servico_coletou_encomenda
from 
	pedido_coleta info_pri_exp_ped
    inner join speedy_ds.fat_pedido f1 on f1.nu_pedido = info_pri_exp_ped.nu_pedido
where 
    f1.nu_pedido::float4::int4 > 0
);
create index if not exists expedicoes__pri_expedicao_ped on expedicoes using btree (pri_expedicao_ped);
create index if not exists expedicoes__servico_coletou_encomenda on expedicoes using btree (servico_coletou_encomenda);
create index if not exists expedicoes__nu_pedido on expedicoes using btree (nu_pedido);
--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------
drop table if exists pedido_previsao_coleta;
create temporary table if not exists pedido_previsao_coleta as (
select 
	f1.nu_pedido,
	f1.dt_hr_previsao_coleta::date as dt_hr_previsao_coleta
from 
	dados_itens a 
	inner join speedy_ds.fat_pedido f1 on a.nu_pedido=f1.nu_pedido	
);	
create index if not exists pedido_previsao_coleta__nu_pedido on pedido_previsao_coleta using btree (nu_pedido);
create index if not exists pedido_previsao_coleta__dt_hr_previsao_coleta on pedido_previsao_coleta using btree (dt_hr_previsao_coleta);
--------------------------------------------------------------------------------------------------
drop table if exists notas;
create temporary table if not exists notas as (
SELECT 
	 n.nu_nota
	,n.cd_empresa
	,n.nu_pedido
	,n.vl_nota
from 
	dados_itens a 
	inner join speedy_ds.fat_nota n on a.nu_pedido=n.nu_pedido		
where 
	nu_nota is not null 
);
--------------------------------------------------------------------------------------------------
create index if not exists notas__nu_pedido on notas using btree (nu_nota);
create index if not exists notas__nu_pedido on notas using btree (cd_empresa);
create index if not exists notas__nu_pedido on notas using btree (nu_pedido);
--------------------------------------------------------------------------------------------------
drop table if exists temp_speedy__transporte_ds;
create temporary table if not exists temp_speedy__transporte_ds as (
select 
	min(cx.dt_saida::date) as periodo, ---- verificar
	f.nu_pedido::numeric,
	min(cx.dt_saida::date) as dt_coleta,
	min(cx.dt_entrega::date) as dt_entrega,
	min(cx.dt_devolucao::date) as dt_devolucao,
	min(cx.dt_previsao_entrega_transp::date) as dt_previsao_entrega_servico,
	min(f.dt_prev_receb_max::date) as dt_previsao_entrega,
	info_cidade_prazo.nu_dias_max as prazo_transp,
	info_cidade_prazo.nu_dias_max_sg as prazo_cliente,
	min(f.dt_prev_coleta::date) as dt_prev_saida,
	min(f.dt_confirmacao::date) as dt_confirmacao_pedido,
	case 
		when f.id_tipo::float4::int4 = 1 then 'PEDIDO'
		when f.id_tipo::float4::int4 = 3 then 'REPOSIÇÃO COBRADA'
		when f.id_tipo::float4::int4 = 4 then 'REPOSIÇÃO NÃO COBRADA'
		when f.id_tipo::float4::int4 = 6 then 'PEDIDO TESTE'
		else null
	end as tipo_pedido,
	case 
		when speedy_ds.eh_acoplado(f.nu_pedido::numeric)::numeric = 0 then 'Não'
		when speedy_ds.eh_acoplado(f.nu_pedido::numeric)::numeric = 1 then 'Pai'
		else speedy_ds.eh_acoplado(f.nu_pedido::numeric)::text
	end as acoplado,
	st.nm_servico_transportador,
	min(cx.nu_conhecimento) as nu_conhecimento,
	min(cx.nu_nota) as nu_nota,
    min(n.vl_nota) AS vl_nota,
    SUM(cx.qt_peso_cubico::numeric) AS qt_peso_cubico,
    f.nm_cidade_ent,
    f.nm_uf_ent,
    case
        when upper(f.nm_cidade_ent) = upper(uf.nm_capital) then 'CAP'
        else 'INT'
    end as polo,
    uf.nm_regiao,
    f.vl_taxa_entrega,
    coalesce(sum(cx.vl_encomenda_calculado::numeric), 0) as custo_envio,
    coalesce(sum(cx.vl_calculado_cotacao::numeric), 0) as custo_envio_cotacao,
    case 
        when sum(dados_itens.tem_cadeira_odonto) = 0 then 'Não' 
        else 'Sim' 
    end as cadeira_odonto,
    case 
        when sum(dados_itens.tem_equip_excecao) = 0 then 'Não' 
        else 'Sim'
        end as equip_excecao,
    sum(dados_itens.qtd_itens_acoes_mkt::numeric) as itens_acoes_mkt,
    case 
            when sum(dados_itens.tem_itens_venda) = 0 then 'Não' 
            else 'Sim' end 
        AS contem_itens_venda,
        (
            SELECT 
                MIN(cnf.nm_faixa)
            FROM speedy_ds.cad_faixa_valor cfv
            INNER JOIN speedy_ds.cad_nome_faixa cnf ON 
                cfv.cd_nome_faixa = cnf.cd_nome_faixa
            WHERE 
                cd_servico_transportador = st.cd_servico_transportador
                AND f.nu_cep_ent BETWEEN nu_cep_inicio AND nu_cep_fim
                AND cfv.nm_uf = f.nm_uf_ent
        ) AS faixa,
        coalesce(COUNT(cx.nu_pedido::numeric), 0) AS volume, -- verificar
        case
        	when coalesce(st.cd_meio_transporte::numeric, 0) = 1 then 'RODOVIÁRIO'
        	when coalesce(st.cd_meio_transporte::numeric, 0) = 2 then 'AÉREO'
	        when coalesce(st.cd_meio_transporte::numeric, 0) = 3 then 'MARÍTIMO'
	        when coalesce(st.cd_meio_transporte::numeric, 0) = 4 then 'FLUVIAL'
	        when coalesce(st.cd_meio_transporte::numeric, 0) = 5 then 'FERROVIÁRIO'
	        else 'Indefinido'
        end modalidade, 
        case
            when (min(cx.dt_entrega::date) is null or min(cx.dt_previsao_entrega_transp::date) is null) 
            then -1
            when min(cx.dt_entrega::date) <= min(cx.dt_previsao_entrega_transp::date) 
            then 0
            else speedy_ds.dias_uteis(min(cx.dt_previsao_entrega_transp::date),min(cx.dt_entrega::date))
        end dif_dias_entrega,
        CASE
            WHEN (expedicoes.pri_expedicao_ped::date IS NOT NULL AND expedicoes.pri_expedicao_ped::date <= pedidos.dt_hr_previsao_coleta::date) THEN 'Em dia'
            WHEN (expedicoes.pri_expedicao_ped::date IS NOT NULL AND (expedicoes.pri_expedicao_ped::date > pedidos.dt_hr_previsao_coleta::date) AND (expedicoes.pri_expedicao_ped::date = pedidos.dt_hr_previsao_coleta::date)) THEN 'Atrasado no dia'
            WHEN (expedicoes.pri_expedicao_ped::date IS NULL OR (expedicoes.pri_expedicao_ped::date > pedidos.dt_hr_previsao_coleta::date)) THEN 'Não expedido no dia'
        end AS status_expedicao,
        cx.dt_expedicao
from 
restricted.speedy_ds__fat_pedido f
    inner join speedy_ds.ped_caixa cx on  cx.nu_pedido = f.nu_pedido
    inner join speedy_ds.cad_unidade_federacao uf on uf.nm_uf = f.nm_uf_ent
    inner join speedy_ds.cad_servico_transportador st on st.cd_servico_transportador = cx.cd_servico_transportador
    inner join dados_itens on dados_itens.nu_pedido = f.nu_pedido
    inner join expedicoes on expedicoes.nu_pedido = f.nu_pedido
    inner join pedido_previsao_coleta pedidos on pedidos.nu_pedido = f.nu_pedido
    left join speedy_ds.cad_tipo_entrega te on te.cd_entrega = f.cd_entrega
    left join info_cidade_prazo on info_cidade_prazo.nu_pedido = f.nu_pedido
    left join notas n on n.nu_nota = cx.nu_nota and n.cd_empresa = cx.cd_empresa and n.nu_pedido = f.nu_pedido
WHERE 
    f.cd_situacao::float4::int4 <> 9
    and cx.cd_situacao::float4::int4 <> 9           
    and cx.dt_saida::date >= now() - interval '30 days'
    and cx.dt_saida::date <=  now()::date
    and cx.nu_nota is not null
    GROUP BY 
        f.nu_pedido,
        f.id_tipo,
        st.cd_servico_transportador,
        st.nm_servico_transportador,
        st.cd_meio_transporte,
        f.nm_cidade_ent,
        f.nm_uf_ent,
        f.nu_cep_ent,
        uf.nm_capital,
        uf.nm_regiao,
        f.vl_taxa_entrega,
        cx.nu_nota,
        cx.cd_empresa,
        expedicoes.pri_expedicao_ped,
        pedidos.dt_hr_previsao_coleta,
        info_cidade_prazo.nu_dias_max,
        info_cidade_prazo.nu_dias_max_sg,
        cx.dt_expedicao
);
--------------------------------------------------------------------------------------------------
drop table if exists restricted_speedy__transporte;
create temp table if not exists restricted_speedy__transporte as (
SELECT 
    1 as cd_banco,
    A.nu_pedido::int as cd_pedido,
    A.nu_nota::int8 as nu_nf,
    status_expedicao as ds_status_expedicao,
    A.nu_conhecimento,
    A.modalidade as cd_modalidade,
    A.dt_coleta::date AS dt_coleta,
    A.dt_prev_saida::date AS dt_previsao_saida,
    A.dt_previsao_entrega::date AS dt_previsao_entrega,
    A.dt_previsao_entrega_servico::date AS dt_previsao_entrega_servico,
    A.dt_entrega::date AS dt_entrega,
    A.custo_envio_cotacao::numeric as vl_custo_envio_cotacao,
    A.vl_taxa_entrega::numeric,
    A.custo_envio::numeric as vl_custo_envio,
    A.volume::numeric as vl_volume,
    A.periodo as dt_periodo,
    A.prazo_cliente as QTD_DIAS_PRAZO_CLIENTE,
    A.prazo_transp as QTD_DIAS_PRAZO_TRANSP,
    speedy_dc.dias_uteis(DT_CONFIRMACAO_PEDIDO::date, dt_coleta::date) AS QTD_dias_uteis_confirmacao_coleta,
    A.qt_peso_cubico as qtd_peso_cubico,
    A.nm_servico_transportador as nm_transportado,
    A.nm_regiao,
    A.polo as cd_polo,
    A.faixa as ds_faixa,
    A.nm_uf_ent as cd_uf_entrega,
    A.nm_cidade_ent as nm_cidade_entrega,
    case
       	when A.dif_dias_entrega = -1 then 0
	    when A.dif_dias_entrega =  1 then 1
	    else 0
    end AS flag_d1,
    case 
       	when A.dif_dias_entrega = -1 then 0
	    when A.dif_dias_entrega =  2 then 1
	    else 0
    end AS flag_d2,
    case 
	    when A.dif_dias_entrega = -1 then 0
	    when A.dif_dias_entrega =  0 then 0
	    when A.dif_dias_entrega =  1 then 0
	    when A.dif_dias_entrega =  2 then 0
	    else 1
	end AS flag_d3,
	A.equip_excecao as flag_equip_excecao,
	A.cadeira_odonto as flag_cadeira_odonto,
    A.itens_acoes_mkt::float4::int4 as flag_itens_acoes_mkt,
    A.contem_itens_venda as flag_contem_itens_venda,
    A.acoplado as flag_acoplado,
    case 
	    when A.dif_dias_entrega = -1 then 0
	    when A.dif_dias_entrega =  0 then 1
	    else 0
    end AS flag_DP,
    case 
	    when A.dif_dias_entrega = -1 then 0
	    when A.dif_dias_entrega =  0 then 0
	    else 1
    end AS flag_FP,
    A.dt_devolucao::date AS dt_devolucao,
	row_number() over (partition by A.nu_pedido::int,A.nu_nota::int, A.modalidade order by to_timestamp(dt_expedicao, 'YYYY/MM/DD HH24:MI:SS') desc) linha
    FROM temp_speedy__transporte_ds A
);
delete from restricted_speedy__transporte where linha > 1 ;

insert into restricted.speedy__transporte
SELECT 
    cd_banco, 
    cd_pedido, 
    nu_nf, 
    ds_status_expedicao, 
    nu_conhecimento, 
    cd_modalidade, 
    dt_coleta, 
    dt_previsao_saida, 
    dt_previsao_entrega, 
    dt_previsao_entrega_servico, 
    dt_entrega, 
    vl_custo_envio_cotacao, 
    vl_taxa_entrega, 
    vl_custo_envio, 
    vl_volume, 
    qtd_dias_prazo_cliente, 
    qtd_dias_prazo_transp, 
    qtd_dias_uteis_confirmacao_coleta, 
    qtd_peso_cubico, 
    nm_transportado, 
    nm_regiao, 
    cd_polo, 
    ds_faixa, 
    cd_uf_entrega, 
    nm_cidade_entrega, 
    flag_d1, 
    flag_d2, 
    flag_d3, 
    flag_equip_excecao, 
    flag_cadeira_odonto, 
    flag_contem_itens_venda, 
    flag_itens_acoes_mkt, 
    flag_acoplado, 
    flag_dp, 
    flag_fp, 
    dt_devolucao,
    now() at time zone 'BRT' as load_datetime
from 
    restricted_speedy__transporte
on conflict (cd_pedido, nu_nf, cd_modalidade)
do update
set 
    cd_banco = excluded.cd_banco,
    cd_pedido = excluded.cd_pedido,
    nu_nf = excluded.nu_nf,
    ds_status_expedicao = excluded.ds_status_expedicao,
    nu_conhecimento = excluded.nu_conhecimento,
    cd_modalidade = excluded.cd_modalidade,
    dt_coleta = excluded.dt_coleta,
    dt_previsao_saida = excluded.dt_previsao_saida,
    dt_previsao_entrega = excluded.dt_previsao_entrega,
    dt_previsao_entrega_servico = excluded.dt_previsao_entrega_servico,
    dt_entrega = excluded.dt_entrega,
    vl_custo_envio_cotacao = excluded.vl_custo_envio_cotacao,
    vl_taxa_entrega = excluded.vl_taxa_entrega,
    vl_custo_envio = excluded.vl_custo_envio,
    vl_volume = excluded.vl_volume,
    qtd_dias_prazo_cliente = excluded.qtd_dias_prazo_cliente,
    qtd_dias_prazo_transp = excluded.qtd_dias_prazo_transp,
    qtd_dias_uteis_confirmacao_coleta = excluded.qtd_dias_uteis_confirmacao_coleta,
    qtd_peso_cubico = excluded.qtd_peso_cubico,
    nm_transportador = excluded.nm_transportador,
    nm_regiao = excluded.nm_regiao,
    cd_polo = excluded.cd_polo,
    ds_faixa = excluded.ds_faixa,
    cd_uf_entrega = excluded.cd_uf_entrega,
    nm_cidade_entrega = excluded.nm_cidade_entrega,
    flag_d1 = excluded.flag_d1,
    flag_d2 = excluded.flag_d2,
    flag_d3 = excluded.flag_d3,
    flag_equip_excecao = excluded.flag_equip_excecao,
    flag_cadeira_odonto = excluded.flag_cadeira_odonto,
    flag_contem_itens_venda = excluded.flag_contem_itens_venda,
    flag_itens_acoes_mkt = excluded.flag_itens_acoes_mkt,
    flag_acoplado = excluded.flag_acoplado,
    flag_dp = excluded.flag_dp,
    flag_fp = excluded.flag_fp,
    dt_devolucao = excluded.dt_devolucao,
    load_datetime = excluded.load_datetime;
 
drop table if exists info_cidade_prazo;
drop table if exists expedicoes;     
drop table if exists dados_itens;
drop table if exists temp_speedy__transporte_ds;
drop table if exists restricted_speedy__transporte;