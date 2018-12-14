<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:variable name="washColl" as="document-node()+" select="collection('XML_Letters/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:variable name="barInterval" select="250"/>
        <xsl:variable name="barWidth" select="75"/>
        <xsl:variable name="xPos" select="195"/>
        
        <svg xmlns="http://www.w3.org/2000/svg"
            width="2000"
            height="2000"
            viewBox="0 0 3000 3000">
            <g transform="translate (30,500)">
                
                <line x1="150" x2="150" y1="100" y2="-410" stroke="black" stroke-width="3"/>
                <line x1="148.5" x2="3000" y1="100" y2="100" stroke="black" stroke-width="3"/>
                
                <text x="490" y="155"> References</text>
                <text x="490" y="-430">References Made Within All of Washinton's Letters</text>
              
              <xsl:for-each select="$washColl">
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
                <xsl:variable name="MilOfi" select="count(descendant::roleName[@type='#MilOfficer'])"/>
                <xsl:comment>What is the value of $MilOfi> 
             <xsl:value-of select="$MilOfi"/></xsl:comment>
                <xsl:variable name="Polic" select="count(descendant::orgName[@type='#political'])"/>
                <xsl:comment>What is the value of $Polic> 
             <xsl:value-of select="$Polic"/></xsl:comment>
                <xsl:variable name="City" select="count(descendant::location/settlement)"/>
                <xsl:comment>What is the value of $City> 
             <xsl:value-of select="$City"/></xsl:comment>
                <xsl:variable name="Brit" select="count(descendant::orgName[@type='#Britain'])"/>
                <xsl:comment>What is the value of $Brit> 
             <xsl:value-of select="$Brit"/></xsl:comment>
                <xsl:variable name="Place" select="count(descendant::placeName)"/>
                <xsl:comment>What is the value of $Place> 
             <xsl:value-of select="$Place"/></xsl:comment>
                <xsl:variable name="Milt" select="count(descendant::orgName[@type='#military'])"/>
                <xsl:comment>What is the value of $Milt> 
             <xsl:value-of select="$Milt"/></xsl:comment>
                <xsl:variable name="Native" select="count(descendant::orgName[@type='#NativeTribe'])"/>
                <xsl:comment>What is the value of $Native> 
             <xsl:value-of select="$Native"/></xsl:comment>
                <xsl:variable name="USPolic" select="count(descendant::roleName[@type='#USpolitical'])"/>
                <xsl:comment>What is the value of $USPolic> 
             <xsl:value-of select="$USPolic"/></xsl:comment>
                <xsl:variable name="war" select="count(descendant::name)"/>
                <xsl:comment>What is the value of $war> 
             <xsl:value-of select="$war"/></xsl:comment>
                   
                
                <rect x="{$xPos}" y="{$State}" width="{$barWidth}" height="{$State}" fill="blue"/>
                <rect x="{$xPos + 125}" y="-{$person }" width="{$barWidth}" height="{$person}" fill="green"/>
                <rect x="{$xPos  + 250}" y="-{$USmil }" width="{$barWidth}" height="{$USmil}" fill="grey"/>
                <rect x="{$xPos  + 375}" y="-{ $date }" width="{$barWidth}" height="{$date}" fill="purple"/>
                <rect x="{$xPos  + 500}" y="-{ $MilOfi}" width="{$barWidth}" height="{$MilOfi}" fill="yellow"/>
                <rect x="{$xPos  + 625}" y="{ $Polic }" width="{$barWidth}" height="{$Polic}" fill="orange"/>
                <rect x="{$xPos  + 750}" y="-{ $City }" width="{$barWidth}" height="{$City }" fill="red"/>
                <rect x="{$xPos  + 875}" y="-{ $Brit}" width="{$barWidth}" height="{$Brit}" fill="pink"/>
                <rect x="{$xPos + 1000}" y="-{$Place}" width="{$barWidth}" height="{$Place}" fill="#6666ff"/>
                <rect x="{$xPos + 1025}" y="-{$Milt}" width="{$barWidth}" height="{$Milt}" fill="#e600e6"/>
                <rect x="{$xPos + 1250}" y="-{$Native}" width="{$barWidth}" height="{$Native}" fill="#80002a"/>
                <rect x="{$xPos + 1375}" y="-{$USPolic}" width="{$barWidth}" height="{$USPolic}" fill="#99ff99"/>
                <rect x="{$xPos + 1500}" y="-{$war}" width="{$barWidth}" height="{$war}" fill=" #d2a679"/>
              </xsl:for-each>
                 
                <text x="195" y="120">State</text>
                <text x="320" y="120">Person</text>
                <text x="445" y="120">US Military</text>
                <text x="570" y="120">Date</text>
                <text x="695" y="120">Military Officer</text>
                <text x="820" y="120">Political</text>
                <text x="945" y="120">City</text>
                <text x="1070" y="120">Britain</text>
                <text x="1195" y="120">Places</text>
                <text x="1320" y="120">Military</text>
                <text x="1445" y="120">Native Tribes</text>
                <text x="1570" y="120">US Political</text>
                <text x="1695" y="120">Wars</text>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>