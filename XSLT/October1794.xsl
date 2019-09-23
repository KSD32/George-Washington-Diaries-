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
                <title>Washington's Diary Entry October 1794</title></head>
            <body>
                
                <h1>October 1794</h1>
                <xsl:apply-templates select="//body"/>
                
            </body>
            <!--ksd32: 09/09/2019: Want to have the notes separate from the text. Reference the drop-down option used in the Ulysseus Project.  -->
        </html>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="date">
        <strong>
            <span class="date">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="date[@type='entrydate']">
        <strong>
            <span class="entrydate">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="location/settlement">
        <strong><span class="city">
            <xsl:apply-templates/>
        </span></strong>
    </xsl:template>
    <xsl:template match="location/region">
        <strong>
            <span class="state">
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
    <xsl:template match="orgName[@type='#political']">
        <strong>
            <span class="political">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="orgName[@type='#religious']">
        <strong>
            <span class="religious">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="orgName[@type='#military']">
        <strong>
            <span class="military">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="orgName[@type='#nation']">
        <strong>
            <span class="nation">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="quote">
        <strong>
            <span class="quote">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="note">
        <strong>
            <span class="note">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="note[@resp='editorsWash']">
        <strong>
            <span class="editorsWash">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="persName">
        <strong>
            <span class="persName">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="name[@type ='#AmericanRevolution']">
        <strong>
            <span class="AmericanRevolution">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="name[@type='FrenchIndian']">
        <strong>
            <span class="FrenchIndian">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="roleName[@type='#MilOfficer']">
        <strong>
            <span class="MilOfficer">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="roleName[@type='#USpolitical']">
        <strong>
            <span class="USpolitical">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    <xsl:template match="roleName[@type='#UScourt']">
        <strong>
            <span class="UScourt">
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    
</xsl:stylesheet>