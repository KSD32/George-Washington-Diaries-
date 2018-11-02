<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <!--2018-11-02 ebb: This XSLT (in progress) will pull prosopography data (names of people, places, organizations/institutions, events) from the George Washington collection files and output them in a standard TEI "site index" series of lists to which the project team will apply standard xml:ids for referencing in the project. 
        The output "site index" file will also serve to supply standard project values for @ref attributes for inline coding throughout the project: we'll work with it (writing a new XSLT) to build up the project ODD (and its generated project RNG schema) using the values the team supplies there.   -->
    
    <xsl:variable name="washColl" as="document-node()+" select="collection('XML_Letters/?select=*.xml')"/>    
<xsl:template match="/">
    <xsl:processing-instruction name="xml-model">
    <xsl:text>href="../out/GeoWash.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:text>
  </xsl:processing-instruction>
    <TEI>
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>Site Index for George Washington Papers project</title>
                    <author>Kiara DeVore</author>
                    <respStmt><resp>With assistance from</resp><name>Elisa Beshero-Bondar</name></respStmt>
                </titleStmt>
                <publicationStmt>
                    <authority>Prepared in TEI P5 for the Washington Project team on newtFire.org. GitHub repository: <ref target="https://github.com/KSD32/George-Washington-Diaries-"/>. Date last worked on: <date when="2018-11-02">02 November 2018</date></authority>
                    <availability><licence><!--Choose and identify a Creative Commons license for sharing your code. Look here: https://creativecommons.org/share-your-work/--></licence></availability>
                </publicationStmt>
                <sourceDesc>
                    <p>Born digital.</p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
        <text>
            <body>
   <!--REDO this b/c you want to work with for-each over distinct values, and map them back onto the tree. -->
<listPerson>
    <xsl:for-each select="distinct-values($washColl//persName ! normalize-space())">
        <person>
            <persName><xsl:value-of select="current()"/></persName>
            <birth/>
            <death/>
            <note></note>
        </person>
    </xsl:for-each>
    
</listPerson>
                
<listOrg>
    <xsl:for-each select="distinct-values($washColl//orgName | $washColl//location/region) ! normalize-space()">
        <org>
            <orgName><xsl:value-of select="current()"/></orgName>
            <note></note>
        </org>

    </xsl:for-each>
    
</listOrg>

<listPlace>
    <xsl:for-each select="distinct-values($washColl//placeName | $washColl//location[not(region)]) ! normalize-space()">
    <place>
        <placeName><xsl:value-of select="current()"/></placeName>
        <location>
            <geo><!--Contains a pairing of latitude and longitude coordinates:  From the TEI Guidelines: "the assumption is that the content of each geo element will be a pair of numbers separated by whitespace, to be interpreted as latitude followed by longitude according to the World Geodetic System." --> </geo>
        </location>
    </place>
    </xsl:for-each>
</listPlace>
                
            </body>
        </text>
    </TEI>
</xsl:template>
   
    
</xsl:stylesheet>