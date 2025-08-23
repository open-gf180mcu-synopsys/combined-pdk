#include <icv.rh>

/*********************/
/* LAYER ASSIGNMENTS */
/*********************/
#include "gf180mcu_layers.rh"

channel = tgate;

ncomp_outside_dnwell = ncomp outside DNWELL;
ncomp_inside_dnwell = ncomp not ncomp_outside_dnwell;

pcomp_outside_dnwell = pcomp outside DNWELL;
pcomp_inside_dnwell = pcomp not pcomp_outside_dnwell;

lvpwell_outside_dnwell = LVPWELL outside DNWELL;
lvpwell_inside_dnwell = LVPWELL not lvpwell_outside_dnwell;

/***************/
/* METAL RULES */
/***************/
metaln_layers: list of polygon_layer = {METAL1, METAL2, METAL3, METAL4, METAL5};

// Metal width

{ @ "M1.1 : Metal1 minimum width : 0.23";
        internal1(METAL1, distance < 0.23, extension = RADIAL);
}

for (n = 2 to 5) {
        @ "M" + n + ".1 : Metal" + n + " minimum width : 0.28";
        internal1(metaln_layers[n - 1], distance < 0.28, extension = RADIAL);
}

// Metal space
{ @ "M1.2a : Metal1 minimum space : 0.23";
        external1(METAL1, distance < 0.23, extension = RADIAL);
}

for (n = 2 to 5) {
        @ "M" + n + ".2a : Metal" + n + " minimum space : 0.28";
        external1(metaln_layers[n - 1], distance < 0.28, extension = RADIAL);
}

for (n = 1 to 5) {
        // Mn.2b stipulates greater space to Metaln longer and wider than 10
        metaln = metaln_layers[n - 1];

        // First, start by selecting all Metaln that meets this criterion.
        // internal1 doesn't allow using a GT or GE constraint, so instead
        // get all the Metaln that doesn't meet the criterion, and then AND
        // the original layer with the NOT of that narrow Metaln
        narrow_metaln = internal1(metaln, distance < 10, extension = NONE);
        wide_metaln = not(metaln, narrow_metaln);

        // Now, space of ALL Metaln to this wide Metaln must be more than 0.3
        @ "M" + n + ".2b : Space to wide Metal" + n + " (length or width > 10) : 0.3";
        external2(metaln, wide_metaln, distance < 0.3, extension = RADIAL);
}

// Metal area

for (n = 1 to 5) {
        @ "M" + n + ".3 : Metal" + n + " minimum area : 0.1444";
        area(metaln_layers[n - 1], value < 0.1444);
}


/****************/
/* DNWELL RULES */
/****************/
{ @ "DN.1 : Min. DNWELL Width : 1.7";
        internal1(DNWELL, distance < 1.7, extension = RADIAL);
}

// Note: really this is two rules with different spacing required
// for different potentials. However, taking the more conservative
// of the two is fine for now because it'll result in a correct
// design, and equipotential polys should be merged anyway.
{ @ "DN.2 : Min. DNWELL Space : 5.42";
        external1(DNWELL, distance < 5.42, extension = RADIAL);
}

/*****************/
/* LVPWELL RULES */
/*****************/
// Rules for LVPWELL inside DNWELL
{ @ "LPW.1 : Min. LVPWELL Width (inside DNWELL) : 0.6";
        internal1(lvpwell_inside_dnwell, distance < 0.6, extension = RADIAL);
}

// Note: really this is two rules with different spacing required
// for different potentials. However, taking the more conservative
// of the two is fine for now because it'll result in a correct
// design, and equipotential polys should be merged anyway.
{ @ "LPW.2 : Min. LVPWELL to LVPWELL Space (inside DNWELL) : 1.4";
        external1(lvpwell_inside_dnwell, distance < 1.4, extension = RADIAL);
}

{ @ "LPW.3 : Min. DNWELL enclose LVPWELL : 2.5";
        enclose(lvpwell_inside_dnwell, DNWELL, distance < 2.5, extension = RADIAL);
}

// Rules for LVPWELL outside DNWELL
{ @ "LPW.11 : Min (LVPWELL outside DNWELL) space to DNWELL : 1.5";
        external2(lvpwell_outside_dnwell, DNWELL, distance < 1.5, extension = RADIAL);
}

{ @ "LPW.12 : LVPWELL cannot overlap with Nwell";
        and(lvpwell_outside_dnwell, NWELL);
}

/***************/
/* NWELL RULES */
/***************/
{ @ "NW.1a : Min. Nwell Width : 0.86";
        internal1(NWELL, distance < 0.86, extension = RADIAL);
}

// Note: really this is two rules with different spacing required
// for different potentials. However, taking the more conservative
// of the two is fine for now because it'll result in a correct
// design, and equipotential polys should be merged anyway.
{ @ "NW.2 : Min. Nwell Space : 1.4";
        external1(NWELL, distance < 1.4, extension = RADIAL);
}

{ @ "NW.3 : Min. Nwell to DNWELL space : 3.1";
        external2(NWELL, DNWELL, distance < 3.1, extension = RADIAL);
}

{ @ "NW.4 : Min. Nwell to LVPWELL space : 0.0";
        external2(NWELL, LVPWELL, distance < 0.0, extension = RADIAL);
}

{ @ "NW.5 : Min. DNWELL enclose Nwell : 0.5";
        enclose(NWELL, DNWELL, distance < 0.5, extension = RADIAL);
}

/**************/
/* COMP RULES */
/**************/
{ @ "DF.1a : Min. COMP Width : 0.22";
        internal1(COMP, distance < 0.22, extension = RADIAL);
}

{ @ "DF.2a : Min. Channel Width : 0.22";
        internal1(channel, distance < 0.22, extension = RADIAL);
}

COMP_MAX_WIDTH = 100;
{ @ "DF.2b : Max. COMP width : " + COMP_MAX_WIDTH;
        // Select all polys bigger than COMP_MAX_WIDTH by undersizing and then oversizing the layer by half
        size(size(COMP, -COMP_MAX_WIDTH/2, clip_acute = BISECTOR), COMP_MAX_WIDTH/2, clip_acute = BISECTOR);
}

{ @ "DF.4a : Min. (LVPWELL Space to NCOMP well tap) inside DNWELL : 0.12";
        external2(ncomp_inside_dnwell, LVPWELL, distance < 0.12, extension = RADIAL);
}

{ @ "DF.4b : Min. DNWELL overlap of NCOMP well tap : 0.62";
        enclose(ncomp, DNWELL, distance < 0.62, extension = RADIAL);
}

{ @ "DF.4c : Min. (Nwell overlap of PCOMP) outside DNWELL : 0.43";
        enclose(pcomp_outside_dnwell, NWELL, distance < 0.43, extension = RADIAL);
}

{ @ "DF.4d : Min. (Nwell overlap of NCOMP) outside DNWELL : 0.12";
        enclose(ncomp_outside_dnwell, NWELL, distance < 0.12, extension = RADIAL);
}

{ @ "DF.4e : Min. DNWELL overlap of PCOMP : 0.93";
        enclose(pcomp, DNWELL, distance < 0.93, extension = RADIAL);
}

{ @ "DF.5 : Min. (LVPWELL overlap of PCOMP well tap) inside DNWELL : 0.12";
        enclose(pcomp_inside_dnwell, LVPWELL, distance < 0.12, extension = RADIAL);
}

/*
{ @ "DF.6 : Min. COMP extend beyond gate : 0.24";
        gate_edge = and_edge(channel, COMP, coincident = false);
        gate_overhang = size_edge(gate_edge, outside = 0.24);
        not(gate_overhang, COMP);
}
*/

{ @ "DF.7 : Min. (LVPWELL space to PCOMP) inside DNWELL : 0.43";
        external2(pcomp_inside_dnwell, LVPWELL, distance < 0.43, extension = RADIAL);
}

{ @ "DF.8 : Min. (LVPWELL overlap of NCOMP) inside DNWELL : 0.43";
        enclose(ncomp_inside_dnwell, LVPWELL, distance < 0.43, extension = RADIAL);
}

{ @ "DF.9 : Min. COMP area : 0.2025";
        area(COMP, value < 0.2025);
}

{ @ "DF.10 : Min. field (hole in COMP) area : 0.26";
        area(donut_holes(COMP), value < 0.26);
}

{ @ "DF.11 : Min. Length of butting COMP edge : 0.30";
        length_edge(coincident_edge(pcomp, ncomp), distance < 0.30);
}

{ @ "DF.12 : Max distance of Nwell tap (NCOMP inside Nwell) from (PCOMP inside Nwell) : 20";
        ncomp_inside_nwell = and(ncomp, NWELL);
        pcomp_inside_nwell = and(pcomp, NWELL);

        // external2 doesn't allow max comparison, so use size to expand and check overlap
        nin_ext = size(ncomp_inside_nwell, 20, clip_acute = BISECTOR);
        and(nin_ext, pcomp_inside_nwell);
}

{ @ "DF.13 : Max distance of substrate tap (PCOMP outside Nwell)  from (NCOMP outside Nwell) : 20";
        ncomp_outside_nwell = not(ncomp, NWELL);
        pcomp_outside_nwell = not(pcomp, NWELL);

        // external2 doesn't allow max comparison, so use size to expand and check overlap
        non_ext = size(ncomp_outside_nwell, 20, clip_acute = BISECTOR);
        and(non_ext, pcomp_outside_nwell);
}

/***************/
/* POLY2 RULES */
/***************/
field_poly = not(POLY2, COMP);

{ @ "PL.1 : Min. Poly2 Interconnect Width : 0.18";
        internal1(POLY2, distance < 0.18, extension = RADIAL);
}

{ @ "PL.2 : Min. Gate Width  (Channel Length) : 0.28";
        internal1(channel, distance < 0.28, extension = RADIAL);
}

{ @ "PL.3 : Min. Poly2 Spacing : 0.24";
        // The actual language of PL.3a is:
        //     Space on COMP  = 0.24
        //     Space on Field = 0.24
        // The diagram for this rule doesn't seem to require Field to be contained
        // inside a COMP donut, so it may be that the distinction is made for PL.3b,
        // which is a guideline for low active sheet resistivity. Since we haven't yet
        // implemented PL.3b, we can probably combine these sub-rules without much issue.
        external1(POLY2, distance < 0.24, extension = RADIAL);
}

{ @ "PL.4 : Min. Poly2 Extension beyond COMP to form end cap : 0.22";
        comp_ext = size(COMP, 0.22);
        poly2_outside_comp = not(POLY2, COMP);
        poly2_within_comp_ext = and(poly2_outside_comp, comp_ext);

        // Note: this may not technically be correct because internal1 might look at
        // the width of the Poly2 and generate a violation. However, in practical use,
        // the gate width is broader than this constraint and it's not the common case
        // for Poly2 width to change just outside the diffusion, so this should be fine.
        internal1(poly2_within_comp_ext, distance < 0.22, extension = RADIAL);
}

{ @ "PL.5 : Min. Field Poly2 Space to COMP : 0.1";
        // There are two separate rules PL.5a and PL.5b for related vs unrelated
        // COMP, but they both specify the same spacing, so we can combine them.
        external2(POLY2, COMP, distance < 0.1, extension = RADIAL);
}

/***************/
/* NPLUS RULES */
/***************/
{ @ "NP.1 : Min. Nplus Width : 0.4";
        internal1(NPLUS, distance < 0.4, extension = RADIAL);
}

{ @ "NP.2 : Min. Nplus Space : 0.4";
        external1(NPLUS, distance < 0.4, extension = RADIAL);
}

{ @ "NP.3a : Nplus space to PCOMP (1) inside Nwell (2) outside LVPWELL but inside DNWELL : 0.16";
        pcomp_np3ai = and(pcomp, NWELL);
        pcomp_np3aii = not(and(pcomp, DNWELL), LVPWELL);
        pcomp_np3a = or(pcomp_np3ai, pcomp_np3aii);
        external2(NPLUS, pcomp_np3a, distance < 0.16, extension = RADIAL);
}

pcomp_np3bi = enclose(pcomp_inside_dnwell, LVPWELL, distance < 0.43, extension = RADIAL);
pcomp_np3bii = not(and(pcomp_inside_dnwell, LVPWELL), pcomp_np3bi);

{ @ "NP.3b(i) : Nplus space to PCOMP inside DNWELL inside LVPWELL for PCOMP overlap by LVPWELL < 0.43 : 0.16";
        external2(NPLUS, pcomp_np3bi, distance < 0.16, extension = RADIAL);
}

{ @ "NP.3b(ii) : Nplus space to PCOMP inside DNWELL inside LVPWELL for PCOMP overlap by LVPWELL >= 0.43 : 0.08";
        external2(NPLUS, pcomp_np3bii, distance < 0.08, extension = RADIAL);
}

pcomp_np3ci = external2(pcomp_outside_dnwell, NWELL, distance < 0.43, extension = RADIAL);
pcomp_np3cii = not(pcomp_outside_dnwell, pcomp_np3ci);

{ @ "NP.3c(i) : Nplus space to PCOMP outside DNWELL for PCOMP space to Nwell < 0.43 : 0.16";
        external2(NPLUS, pcomp_np3ci, distance < 0.16, extension = RADIAL);
}

{ @ "NP.3c(ii) : Nplus space to PCOMP outside DNWELL for PCOMP space to Nwell >= 0.43 : 0.08";
        external2(NPLUS, pcomp_np3cii, distance < 0.08, extension = RADIAL);
}

/*
* NP.3d and NP.3e seem to be redundant? A PCOMP-NCOMP butted edge must necessarily
* overlap with Nplus, so I'm not sure what these rules are asking.
*/

{ @ "NP.4a : Nplus space to related P-channel gate at a butting edge parallel to gate : 0.32";
        pgate = and(channel, PPLUS);
        external2(NPLUS, pgate, distance < 0.32, extension = RADIAL);
}

{ @ "NP.4b : Nplus Within 0.32 of channel, space to P-channel gate extension perpendicular to the direction of Poly2 : 0.22";
        // Need to figure out
}

{ @ "NP.5a : Nplus overlap of N-channel gate : 0.23";
        ngate = and(channel, NPLUS);
        enclose(ngate, NPLUS, distance < 0.23, extension = RADIAL);
}



{ @ "NP.5b : Nplus extension beyond COMP for the COMP (1) inside LVPWELL (2) outside Nwell and DNWELL : 0.16";
        comp_np5bi = and(COMP, LVPWELL);
        comp_np5bii = not(not(COMP, NWELL), DNWELL);
        comp_np5b = or(comp_np5bi, comp_np5bii);
        enclose(comp_np5b, NPLUS, distance < 0.16, extension = RADIAL);
}

comp_np5ci = enclose(and(COMP, DNWELL), LVPWELL, distance < 0.43, extension = RADIAL);
comp_np5cii = not(and(COMP, DNWELL), comp_np5ci);

{ @ "NP.5c(i) : Nplus extension beyond COMP inside DNWELL for Nplus < 0.43 from LVPWELL edge : 0.16";
        enclose(comp_np5ci, NPLUS, distance < 0.16, extension = RADIAL);
}

{ @ "NP.5c(ii) : Nplus extension beyond COMP inside DNWELL for Nplus >= 0.43 from LVPWELL edge : 0.02";
        enclose(comp_np5cii, NPLUS, distance < 0.02, extension = RADIAL);
}

comp_np5di = enclose(not(COMP, DNWELL), NWELL, distance < 0.43, extension = RADIAL);
comp_np5dii = not(not(COMP, DNWELL), comp_np5di);

{ @ "NP.5d(i) : Nplus extension beyond COMP inside DNWELL for Nwell overlap of Nplus < 0.43 : 0.16";
        enclose(comp_np5di, NPLUS, distance < 0.16, extension = RADIAL);
}

{ @ "NP.5d(ii) : Nplus extension beyond COMP inside DNWELL for Nwell overlap of Nplus >= 0.43 : 0.02";
        enclose(comp_np5dii, NPLUS, distance < 0.02, extension = RADIAL);
}

{ @ "NP.6 : Nplus overlap with NCOMP butted to PCOMP : 0.22";
        // We can just select intersecting and lop off PCOMP becuase NCOMP-PCOMP overlap is a violation anyway
        ncomp_intersecting_pcomp = interacting(ncomp, pcomp);
        ncomp_butted_pcomp = not(ncomp_intersecting_pcomp, pcomp);
        ncomp_butted_pcomp_overlapping_nplus = and(ncomp_butted_pcomp, NPLUS);
        internal1(ncomp_butted_pcomp_overlapping_nplus, distance < 0.22, extension = RADIAL);
}

{ @ "NP.7 : Nplus space to unrelated unsalicided Poly2 : 0.18";
        // TODO: figure out how to iterate over separate polys in a layer
}

{ @ "NP.8a : Minimum Nplus area : 0.35";
        area(NPLUS, value < 0.35);
}

{ @ "NP.8b : Minimum area enclose by Nplus : 0.35";
        area(donut_holes(NPLUS), value < 0.35);
}

/***************/
/* PPLUS RULES */
/***************/
{ @ "PP.1 : Min. Pplus Width : 0.4";
        internal1(PPLUS, distance < 0.4, extension = RADIAL);
}

{ @ "PP.2 : Min. Pplus Space : 0.4";
        external1(PPLUS, distance < 0.4, extension = RADIAL);
}

{ @ "PP.3a : Pplus space to NCOMP (1) inside LVPWELL (2) outside NWELL and DNWELL : 0.16";
        ncomp_pp3ai = and(ncomp, LVPWELL);
        ncomp_pp3aii = not(not(ncomp, NWELL), DNWELL);
        ncomp_pp3a = or(ncomp_pp3ai, ncomp_pp3aii);
        external2(PPLUS, ncomp_pp3a, distance < 0.16, extension = RADIAL);
}

ncomp_pp3bii = external2(ncomp_inside_dnwell, LVPWELL, distance < 0.43, extension = RADIAL);
ncomp_pp3bi = not(ncomp_inside_dnwell, ncomp_pp3bii);

{ @ "PP.3b(ii) : Pplus space to NCOMP inside DNWELL for NCOMP space to LVPWELL < 0.43 : 0.16";
        external2(PPLUS, ncomp_pp3bii, distance < 0.16, extension = RADIAL);
}

{ @ "PP.3b(i) : Pplus space to NCOMP inside DNWELL for NCOMP space to LVPWELL >= 0.43 : 0.08";
        external2(PPLUS, ncomp_pp3bi, distance < 0.08, extension = RADIAL);
}

ncomp_pp3cii = enclose(ncomp_outside_dnwell, NWELL, distance < 0.43, extension = RADIAL);
ncomp_pp3ci = not(ncomp_outside_dnwell, ncomp_pp3cii);

{ @ "PP.3c(ii) : Pplus space to NCOMP outside DNWELL for NCOMP space to Nwell < 0.43 : 0.16";
        external2(PPLUS, ncomp_pp3cii, distance < 0.16, extension = RADIAL);
}

{ @ "PP.3c(i) : Pplus space to NCOMP outside DNWELL for NCOMP space to Nwell >= 0.43 : 0.08";
        external2(PPLUS, ncomp_pp3ci, distance < 0.08, extension = RADIAL);
}


/*
* PP.3d and PP.3e seem to be redundant? A PCOMP-NCOMP butted edge must necessarily
* overlap with Pplus, so I'm not sure what these rules are asking.
*/

{ @ "PP.4a : Pplus space to related N-channel gate at a butting edge parallel to gate : 0.32";
        ngate = and(channel, NPLUS);
        external2(PPLUS, ngate, distance < 0.32, extension = RADIAL);
}

{ @ "PP.4b : Within 0.32 of channel, Pplus space to N-channel gate extension perpendicular to the direction of Poly2 : 0.22";
        // Need to figure out
}

{ @ "PP.5a : Pplus overlap of P-channel gate : 0.23";
        pgate = and(channel, PPLUS);
        enclose(pgate, PPLUS, distance < 0.23, extension = RADIAL);
}


{ @ "PP.5b : Pplus extension beyond COMP for the COMP (1) inside NWELL (2) outside LVPWELL but inside DNWELL : 0.16";
        comp_pp5bi = and(COMP, NWELL);
        comp_pp5bii = not(and(COMP, DNWELL), LVPWELL);
        comp_pp5b = or(comp_pp5bi, comp_pp5bii);
        enclose(comp_pp5b, PPLUS, distance < 0.16, extension = RADIAL);
}

comp_pp5cii = enclose(and(COMP, DNWELL), LVPWELL, distance < 0.43, extension = RADIAL);
comp_pp5ci = not(and(COMP, DNWELL), comp_pp5cii);

{ @ "PP.5c(ii) : Pplus extension beyond COMP inside DNWELL for LVPWELL overlap of Pplus < 0.43 : 0.16";
        enclose(comp_pp5cii, PPLUS, distance < 0.16, extension = RADIAL);
}

{ @ "PP.5c(i) : Pplus extension beyond COMP inside DNWELL for LVPWELL overlap of Pplus >= 0.43 : 0.02";
        enclose(comp_pp5ci, PPLUS, distance < 0.02, extension = RADIAL);
}

comp_pp5dii = external2(not(COMP, DNWELL), NWELL, distance < 0.43, extension = RADIAL);
comp_pp5di = not(not(COMP, DNWELL), comp_pp5dii);

{ @ "PP.5d(ii) : Pplus extension beyond COMP outside DNWELL for Pplus space to Nwell < 0.43 : 0.16";
        enclose(comp_pp5dii, PPLUS, distance < 0.16, extension = RADIAL);
}

{ @ "PP.5d(i) : Pplus extension beyond COMP outside DNWELL for Pplus space to Nwell >= 0.43 : 0.02";
        enclose(comp_pp5di, PPLUS, distance < 0.02, extension = RADIAL);
}

{ @ "PP.6 : Pplus overlap with PCOMP butted to NCOMP : 0.22";
        // We can just select intersecting and lop off NCOMP becuase NCOMP-PCOMP overlap is a violation anyway
        pcomp_intersecting_ncomp = interacting(pcomp, ncomp);
        pcomp_butted_ncomp = not(pcomp_intersecting_ncomp, ncomp);
        pcomp_butted_ncomp_overlapping_pplus = and(pcomp_butted_ncomp, PPLUS);
        internal1(pcomp_butted_ncomp_overlapping_pplus, distance < 0.22, extension = RADIAL);
}

{ @ "PP.7 : Pplus space to unrelated unsalicided Poly2 : 0.18";
        // TODO: figure out how to iterate over separate polys in a layer
}

{ @ "PP.8a : Minimum Pplus area : 0.35";
        area(PPLUS, value < 0.35);
}

{ @ "PP.8b : Minimum area enclose by Pplus : 0.35";
        area(donut_holes(PPLUS), value < 0.35);
}

/*****************/
/* CONTACT RULES */
/*****************/
{ @ "CO.1: Min/max contact size : 0.22";
    not_length_edge(CONT, distance = 0.22);
}

{
    @ "CO.2a: Space : 0.25";
    external2_edge(CONT, CONT, distance < 0.25, extension = RADIAL);
}

{
    @ "CO.3 Poly2 overlap of contact : 0.07";
    enclose(CONT, POLY2, distance < 0.07, extension=NONE);
}

{
    @ "CO.4 COMP overlap of contact : 0.07";
    enclose(CONT, COMP, distance < 0.07, extension=NONE);
}

{
    BUTTED = touching_edge(ncomp, pcomp, coincidence = EDGE);

    N_ACTIVE_BUTTED = touching(ncomp, BUTTED, 1);
    P_ACTIVE_BUTTED = touching(pcomp, BUTTED, 1);

    @ "CO.5a Nplus overlap of contact on COMP : 0.1";
    enclose(CONT, N_ACTIVE_BUTTED, distance < 0.1, extension=NONE);
    @ "CO.5b Pplus overlap of contact on COMP : 0.1";
    enclose(CONT, P_ACTIVE_BUTTED, distance < 0.1, extension=NONE);
}

{
    CONT_OVERLAP = and(CONT, COMP);
    @ "CO.7 Space from COMP contact to Poly2 on COMP : 0.15";
    external2(POLY2, CONT_OVERLAP, distance < 0.15, extension=NONE);
}

{
    POLY2_OVERLAP = and(CONT, POLY2);
    @ "CO.8 Space from Poly2 contact to COMP : 0.17";
    external2(POLY2_OVERLAP, COMP, distance < 0.17, extension=NONE);
}

{
    BUTTED = touching_edge(ncomp, pcomp, coincidence = EDGE);
    @ "CO.9 Contact on NCOMP to PCOMP butting edge is forbidden";
    and_edge(BUTTED, CONT, coincident=false);
}

{
    POLY2_COMP = and(POLY2, pcomp);
    @ "CO.10 Contact on Poly2 gate over COMP is forbidden";
    and(CONT, POLY2_COMP);
}


/*************/
/* VIA RULES */
/*************/
vian_layers: list of polygon_layer = {VIA1, VIA2, VIA3, VIA4, VIA5};

for (n = 1 to 5) {
    @ "V" + n + ".1: Min/max Via" + n + " size : 0.26";
    not_length_edge(vian_layers[n-1], distance = 0.26);
}

for (n = 1 to 5) {
    @ "V" + n + ".2a: Space : 0.26";
    external2_edge(vian_layers[n-1], vian_layers[n-1], distance < 0.26, extension = RADIAL);
}
/*
for (n = 1 to 5) {
    @ "V" + n + "3: Metal" + n + " overlap of Via" + n + " : 0.00";
    not_inside(vian_layers[n-1], metaln_layers[n-1]);
}

for (n = 1 to 5) {
    @ "V" + n + "3(1): Metal" + n + " end-of-line overlap : 0.06";
    line_end = adjacent_edge(metaln_layers[n-1], <0.34, ==90, ==90, >=0.28, >=0.28);
    overlap = and(vian_layers[n-1], metaln_layers[n-1]);
    external2(overlap, line_end, distance < 0.06, extension = RADIAL);
}*/

