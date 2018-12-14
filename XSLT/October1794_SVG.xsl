<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:variable name="barInterval" select="250"/>
        <xsl:variable name="barWidth" select="75"/>
        <xsl:variable name="xPos" select="195"/>
        
        <svg xmlns="http://www.w3.org/2000/svg"
            width="1000"
            height="1000"
            viewBox="0 0 2000 2000">
            
            <g transform="translate (30, 500)">
                
                <line x1="150" x2="150" y1="100" y2="-410" stroke="black" stroke-width="3"/>
                <line x1="148.5" x2="3000" y1="100" y2="100" stroke="black" stroke-width="3"/>
                
                <text x="490" y="155"> References</text>
                <text x="490" y="-430">References Made Within Washington's October 1794 Diary Entries</text>
                
                <xsl:variable name="State" select="count(descendant::location/region)"/>
                <xsl:variable name="person" select="count(descendant::persName)"/>
                <xsl:variable name="USmil" select="count(descendant::orgName[@type='#USmilitary'])"/>
                <xsl:variable name="date" select="count(descendant::date)"/>
                <xsl:variable name="MilOfi" select="count(descendant::roleName[@type='#MilOfficer'])"/>
                <xsl:variable name="Polic" select="count(descendant::orgName[@type='#political'])"/>
                <xsl:variable name="City" select="count(descendant::location/settlement)"/>
                <xsl:variable name="Place" select="count(descendant::placeName)"/>
                <xsl:variable name="Milt" select="count(descendant::orgName[@type='#military'])"/>
                <xsl:variable name="USPolic" select="count(descendant::roleName[@type='#USpolitical'])"/>
                <xsl:variable name="AR" select="count(descendant::name[@type='#AmericanRevolution'])"/>
                <xsl:variable name="FI" select="count(descendant::name[@type='FrenchIndian'])"/>
                <xsl:variable name="Nation" select="count(descendant::orgName[@type='#nation'])"/>
                <xsl:variable name="Court" select="count(descendant::roleName[@type='#UScourt'])"/>
                
                <rect x="{$xPos}" y="{$State}" width="{$barWidth}" height="{$State*11.5}" fill="blue"/>
                <rect x="{$xPos + 125}" y="-{$person *7}" width="{$barWidth}" height="{$person*8.7}" fill="green"/>
                <rect x="{$xPos  + 250}" y="-{$USmil *7}" width="{$barWidth}" height="{$USmil *10.3}" fill="grey"/>
                <rect x="{$xPos  + 375}" y="-{ $date *7}" width="{$barWidth}" height="{$date *10}" fill="purple"/>
                <rect x="{$xPos  + 500}" y="-{ $MilOfi *2.5}" width="{$barWidth}" height="{$MilOfi *9.5}" fill="yellow"/>
                <rect x="{$xPos  + 625}" y="{ $Polic *7}" width="{$barWidth}" height="{$Polic *12.6}" fill="orange"/>
                <rect x="{$xPos  + 750}" y="-{ $City *7}" width="{$barWidth}" height="{$City *9.9}" fill="red"/>
              
                
            </g>
        </svg>
            
    </xsl:template>
</xsl:stylesheet>