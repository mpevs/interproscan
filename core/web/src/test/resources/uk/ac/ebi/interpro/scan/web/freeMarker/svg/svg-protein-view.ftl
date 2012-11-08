<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<?xml-stylesheet type="text/css" href="resources/css/type_colours_svg.css"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<#assign globalDocumentWidth=1280/>
<#assign globalDocumentHeight=svgDocumentHeight/>
<#assign globalDocumentWidthFormatted=globalDocumentWidth?string("0")/>
<#assign globalDocumentHeightFormatted=globalDocumentHeight?string("0")/>

<svg xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns="http://www.w3.org/2000/svg"
     id="svgProteinView"
     width="100%"
     viewBox="0 0 ${globalDocumentWidthFormatted} ${globalDocumentHeightFormatted}"
     version="1.1">
<#--Protein Accession title-->
    <title>${protein.ac}</title>

    <desc>Auto-generate SVG file produced by InterProScan 5.
        Tested successfully on the following browsers:
        *Mozilla Firefox for Ubuntu Version 15.0.1
        *Chrome/Chromium Version 20.0.1132.47 Ubuntu 12.04
        *Safari ?
        *IE ?
    </desc>
    <defs id="defs3220">
        <polygon id="blackArrowComponent" points="0,2  8,6  0,10"
                 style="stroke:#660000; fill:black;"/>
        <rect id="blackSquare" x="1px" y="7px" height="6px" width="6px" style="fill:393939"/>
    </defs>
<#--Main box around the protein view-->
    <rect id="background" x="0" y="0" width="${globalDocumentWidthFormatted}" height="${globalDocumentHeightFormatted}"
          style="fill: white;"></rect>
    <rect id="mainBoxBorder"
          x="30px" y="30px" width="${(globalDocumentWidth-60)?string("0")}"
          height="${(globalDocumentHeight - 35)?string("0")}"
          style="fill: white; stroke: lightGrey; stroke-width: 1;"></rect>
    <image x="30px" y="4px" width="22px" height="22px"
           xlink:href="resources/icons/ico_type_protein.png"/>
    <text x="55px" y="20px" style="fill:#1897E9;font-family:Verdana,Helvetica,sans-serif;
                             font-size:20">Protein
    </text>

<#--protein info component-->
<#global proteinInfoComponentHeight=180/>
<#global yPosition=30/>
<#include "component/protein-info-component.ftl"/>

<#--Protein family membership component-->
<#global familyComponentHeight=0/>
<#assign yPosition=yPosition+proteinInfoComponentHeight/>
<#include "component/protein-family-component.ftl"/>

<#--Protein summary view component-->
<#global summaryViewComponentHeight=0/>
<#assign yPosition=yPosition+familyComponentHeight/>
<#include "component/protein-summary-view-component.ftl"/>

<#--Protein features component-->
<#global proteinFeaturesComponentHeight=0/>
<#assign yPosition=yPosition+summaryViewComponentHeight/>
<#include "component/protein-features-component.ftl"/>

<#--Protein GO terms component-->
<#assign yPosition=yPosition+proteinFeaturesComponentHeight/>
<#include "component/protein-xref-component.ftl"/>

</svg>