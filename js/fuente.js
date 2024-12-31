import { even_cargar_deposito, cargar_deposito } from "./carga_deposito.js";
import {
  even_cargar_prefijo,
  cargar_prefijo,
  benefi,
  cargar_beneficiario,
  ev_mod_beneficiario,
} from "./carga_prefijo_1.js";

import {
  even_cargar_prefijo_2,
  cargar_prefijo_2,
  retira,
  cargar_retira,
  ev_mod_retira,
} from "./carga_prefijo_2.js";

import { carga_recurso } from "./carga_recurso.js";

import { eve_imprimir } from "./alta_vale.js";

import { fecha_e, actualiza_fecha_v } from "./ingresa_fecha_vale.js";

import { mascara_input } from "./mascara_expe.js";

even_cargar_deposito();
even_cargar_prefijo();
even_cargar_prefijo_2();

ev_mod_beneficiario();
ev_mod_retira();
carga_recurso();

eve_imprimir();

fecha_e();
actualiza_fecha_v();

mascara_input();
