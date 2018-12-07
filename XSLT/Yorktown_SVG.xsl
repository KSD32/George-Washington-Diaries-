<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- The document used for the SVG is Washington's Diary Entry. This document is located in the XML_Letters folder on the George Washington GitRepo. -->
    <xsl:template match="/">
        <xsl:variable name="barInterval" select="250"/>
        <xsl:variable name="barWidth" select="75"/>
        <xsl:variable name="xPos" select="195"/>
        
        <svg xmlns="http://www.w3.org/2000/svg" height="800">
            <g transform="translate (30,500)">
                
                <line x1="150" x2="150" y1="100" y2="-410" stroke="black" stroke-width="3"/>
                <line x1="148.5" x2="3000" y1="100" y2="100" stroke="black" stroke-width="3"/>
                
                <text x="490" y="155"> References</text>
                <text x="490" y="-430">References Made Within Washington's May 1781 Diary Entries</text>
                
                <xsl:variable name="State" select="count(descendant::location/region)"/>
                <xsl:variable name="person" select="count(descendant::persName)"/>
                <xsl:variable name="USmil" select="count(descendant::orgName[@type='#USmilitary'])"/>
                <xsl:variable name="date" select="count(descendant::date)"/>
                <xsl:variable name="MilOfi" select="count(descendant::roleName[@type='#MilOfficer'])"/>
                <xsl:variable name="Polic" select="count(descendant::orgName[@type='#political'])"/>
                <xsl:variable name="City" select="count(descendant::location/settlement)"/>
                <xsl:variable name="Brit" select="count(descendant::orgName[@type='#Britain'])"/>
                <xsl:variable name="Place" select="count(descendant::placeName)"/>
                <xsl:variable name="Milt" select="count(descendant::orgName[@type='#military'])"/>
                <xsl:variable name="Native" select="count(descendant::orgName[@type='#NativeTribe'])"/>
                <xsl:variable name="USPolic" select="count(descendant::roleName[@type='#USpolitical'])"/>
                
                <rect x="{$xPos}" y="{$State}" width="{$barWidth}" height="{$State*11.5}" fill="blue"/>
                <rect x="{$xPos + 125}" y="-{$person *7}" width="{$barWidth}" height="{$person*8.7}" fill="green"/>
                <rect x="{$xPos  + 250}" y="-{$USmil *7}" width="{$barWidth}" height="{$USmil *10.3}" fill="grey"/>
                <rect x="{$xPos  + 375}" y="-{ $date *7}" width="{$barWidth}" height="{$date *10}" fill="purple"/>
                <rect x="{$xPos  + 500}" y="-{ $MilOfi *2.5}" width="{$barWidth}" height="{$MilOfi *9.5}" fill="yellow"/>
                <rect x="{$xPos  + 625}" y="{ $Polic *7}" width="{$barWidth}" height="{$Polic *12.6}" fill="orange"/>
                <rect x="{$xPos  + 750}" y="-{ $City *7}" width="{$barWidth}" height="{$City *9.9}" fill="red"/>
                <rect x="{$xPos  + 875}" y="-{ $Brit}" width="{$barWidth}" height="{$Brit *11}" fill="pink"/>
                
                
                
                <text x="130" y="100">0</text>
                <text x="130" y="0">10</text>
                <text x="130" y="-100">20</text>
                <text x="130" y="-200">30</text>
                <text x="130" y="-300">40</text>
                <text x="130" y="-400">50</text>
                <text x="130" y="-500">60</text>
               
                
                <text x="195" y="120">State</text>
                <text x="320" y="120">Person</text>
                <text x="445" y="120">US Military</text>
                <text x="570" y="120">Date</text>
                <text x="695" y="120">Military Officer</text>
                <text x="820" y="120">Political</text>
                <text x="945" y="120">City</text>
                <text x="1070" y="120">Britain</text>
                
                <text x="195" y="135">(8)</text>
                <text x="320" y="135">(50)</text>
                <text x="445" y="135">(30)</text>
                <text x="570" y="135">(34)</text>
                <text x="695" y="135">(14)</text>
                <text x="820" y="135">(5)</text>
                <text x="945" y="135">(34)</text>
                <text x="1070" y="135">(10)</text>
               
                
                
                <text x="25" y="-250"> Total Counted</text>
                
            </g>
            
        </svg>
    </xsl:template>
</xsl:stylesheet>