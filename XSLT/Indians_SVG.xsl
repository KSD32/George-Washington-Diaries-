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
        
        <svg xmlns="http://www.w3.org/2000/svg"
            width="1000"
            height="1000"
            viewBox="0 0 1500 1500">
            <g transform="translate (30,500)">
                
                <line x1="150" x2="150" y1="100" y2="-410" stroke="black" stroke-width="3"/>
                <line x1="148.5" x2="3000" y1="100" y2="100" stroke="black" stroke-width="3"/>
                
                <text x="490" y="155"> References</text>
                <text x="490" y="-430">References Made Within Washington's Letter to Indian Chiefs</text>
                
                <xsl:variable name="State" select="count(descendant::location/region)"/>
                <xsl:comment>What is the value of $State> 
             <xsl:value-of select="$State"/></xsl:comment>
                
                <xsl:variable name="person" select="count(descendant::persName)"/>
                <xsl:comment>What is the value of $person> 
             <xsl:value-of select="$person"/></xsl:comment>
                <xsl:variable name="USmil" select="count(descendant::orgName[@type='#USmilitary'])"/>
                <xsl:comment>What is the value of $USmil> 
             <xsl:value-of select="$USmil"/></xsl:comment>
                <xsl:variable name="date" select="count(descendant::date)"/>
                <xsl:comment>What is the value of $date> 
             <xsl:value-of select="$date"/></xsl:comment>
                <xsl:variable name="City" select="count(descendant::location/settlement)"/>
                <xsl:comment>What is the value of $City> 
             <xsl:value-of select="$City"/></xsl:comment>
                <xsl:variable name="Brit" select="count(descendant::orgName[@type='#Britain'])"/>
                <xsl:comment>What is the value of $Brit> 
             <xsl:value-of select="$Brit"/></xsl:comment>
                <xsl:variable name="Place" select="count(descendant::placeName)"/>
                <xsl:comment>What is the value of $Place> 
             <xsl:value-of select="$Place"/></xsl:comment>
                
                <xsl:variable name="Native" select="count(descendant::orgName[@type='#NativeTribe'])"/>
                <xsl:comment>What is the value of $Native> 
             <xsl:value-of select="$Native"/></xsl:comment>
                <xsl:variable name="USPolic" select="count(descendant::roleName[@type='#USpolitical'])"/>
                <xsl:comment>What is the value of $USPolic> 
             <xsl:value-of select="$USPolic"/></xsl:comment>
                
                <rect x="{$xPos}" y="{$State *35}" width="{$barWidth}" height="{$State*64}" fill="blue"/>
                <rect x="{$xPos + 125}" y="-{$person *46}" width="{$barWidth}" height="{$person*62.5}" fill="green"/>
                <rect x="{$xPos  + 250}" y="{$USmil *35}" width="{$barWidth}" height="{$USmil *64}" fill="grey"/>
                <rect x="{$xPos  + 375}" y="-{ $date *28}" width="{$barWidth}" height="{$date *60.7}" fill="purple"/>
                <rect x="{$xPos  + 500}" y="-{ $City *38}" width="{$barWidth}" height="{$City *62.5}" fill="yellow"/>
                <rect x="{$xPos  + 625}" y="-{ $Brit *28}" width="{$barWidth}" height="{$Brit *60.7}" fill="orange"/>
                <rect x="{$xPos  + 750}" y="{ $Place *35}" width="{$barWidth}" height="{$Place *64}" fill="red"/>
               
                
                <rect x="{$xPos  + 875}" y="-{ $Native *47}" width="{$barWidth}" height="{$Native *61}" fill=" #80ff80"/>
                <rect x="{$xPos  + 1000}" y="{ $USPolic *35}" width="{$barWidth}" height="{$USPolic *64}" fill="#5500ff"/>
              
                <text x="195" y="120">States</text>
                <text x="320" y="120">Person</text>
                <text x="445" y="120">US Military</text>
                <text x="570" y="120">Date</text>
                <text x="695" y="120">Cities</text>
                <text x="820" y="120">Britain</text>
                <text x="945" y="120">Place</text>
                
                <text x="1070" y="120">Native Tribes</text>
                <text x="1195" y="120">US Political</text>
                
                <text x="130" y="100">0</text>
                <text x="130" y="40">1</text>
                <text x="130" y="-20">2</text>
                <text x="130" y="-80">3</text>
                <text x="130" y="-140">4</text>
                <text x="130" y="-200">5</text>
                <text x="130" y="-260">6</text>
                <text x="130" y="-320">7</text>
                
                <text x="195" y="135">(1)</text>
                <text x="320" y="135">(6)</text>
                <text x="445" y="135">(1)</text>
                <text x="570" y="135">(3)</text>
                <text x="695" y="135">(4)</text>
                <text x="820" y="135">(3)</text>
                <text x="945" y="135">(1)</text>
                <text x="1070" y="135">(7)</text>
                <text x="1195" y="135">(1)</text>
                
                <text x="25" y="-250"> Total Counted</text>
               
                
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>