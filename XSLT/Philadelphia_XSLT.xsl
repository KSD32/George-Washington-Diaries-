<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xpath-default-namespace="http://www.tei-c.org/ns/1.0"
xmlns:math="http://www.w3.org/2005/xpath-functions/math"
exclude-result-prefixes="xs math"
xmlns="http://www.w3.org/1999/xhtml"
version="3.0">
<xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="letters_html.css"/>
                <title>Washington's Letter On Attack on Philadelphia</title></head>
            <body>
                
                <h1>Philadelphia Letter</h1>
                <xsl:apply-templates select="//body"/>
                
            </body>
            
        </html>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="date">
        <strong><span class="date">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="persName">
        <strong><span class="persName">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="location/region">
        <strong><span class="state">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="location/settlement">
        <strong><span class="city">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="orgName[@type='Britain']">
        <strong><span class="British">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="orgName[@type='military']">
        <strong><span class="military">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="roleName[@type='#MilOfficer']">
        <strong>
            <span class="MilOfficer">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="orgName[@type='#USmilitary']">
        <strong>
            <span class="USmilitary">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
</xsl:stylesheet>