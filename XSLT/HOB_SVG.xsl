<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- The document used for the SVG is Washington's Letter to James Madison. This document is located in the XML_Letters folder on the George Washington GitRepo. -->
    <xsl:template match="/">
        <xsl:variable name="barInterval" select="250"/>
        <xsl:variable name="barWidth" select="75"/>
        <xsl:variable name="xPos" select="195"/>
        
        <svg xmlns="http://www.w3.org/2000/svg" height="800">
            <g transform="translate (30,500)">
                
                <line x1="150" x2="150" y1="1" y2="-410" stroke="black" stroke-width="3"/>
                <line x1="149" x2="700" y1="0" y2="0" stroke="black" stroke-width="3"/>
                
                <text x="490" y="55"> References</text>
                <text x="490" y="-430">References Made Within the House of Burgesses Letter</text>
                
                <xsl:variable name="location" select="count(descendant::location)"/>
                <xsl:variable name="person" select="count(descendant::persName)"/>
                <xsl:variable name="org" select="count(descendant::orgName)"/>
                
                <rect x="{$xPos}" y="-{$location *51.2}" width="{$barWidth}" height="{$location * 51}" fill="blue"/>
                <rect x="{$xPos + 125}" y="-{$person * 51.4}" width="{$barWidth}" height="{$person * 51.2}" fill="green"/>
                <rect x="{$xPos  + 250}" y="-{$org * 50.7}" width="{$barWidth}" height="{$org *50}" fill="grey"/>
                
                <text x="135" y="0">0</text>
                <text x="135" y="-50">1</text>
                <text x="135" y="-100">2</text>
                <text x="135" y="-150">3</text>
                <text x="135" y="-200">4</text>
                <text x="135" y="-250">5</text>
                <text x="135" y="-300">6</text>
                <text x="135" y="-350">7</text>
                <text x="135" y="-400">8</text>
                
                <text x="195" y="14">Location</text>
                <text x="320" y="14">Person</text>
                <text x="445" y="14">Organization</text>
                
                <text x="25" y="-250"> Total Counted</text>
                <text x="400" y="-350" font-size="14px">This material was taken from George Washington's Letter to James Madison, dated February 5, 1788.</text>
                <text x="400" y="-325" font-size="14px">The following graph is a representation of the locations, people, and organizations that are referenced within the document. </text>
            </g>
            
        </svg>
    </xsl:template>
</xsl:stylesheet>