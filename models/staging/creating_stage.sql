{{ config(materialized='ephemeral') }}

{% do run_query("create or replace stage MODELSTAGE") %}

{% do run_query("create or replace stage TEST") %}

