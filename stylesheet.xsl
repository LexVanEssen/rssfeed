<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd"><xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" /><xsl:template match="/"><html xmlns="http://www.w3.org/1999/xhtml"><head><title><xsl:value-of select="/rss/channel/title" /> RSS Feed</title><meta charset="UTF-8" /><meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" /><meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no" /><style type="text/css">
                    a { color: #0064b3; }
                </style></head><body><xsl:attribute name="style"><xsl:value-of select="'background-color: #f6f6f6;'" /></xsl:attribute><header><!--<h1>RSS Feed</h1>--><!--<h2>
                        <xsl:value-of select="/rss/channel/title"/>
                    </h2>
                    <p>
                        <xsl:value-of select="/rss/channel/description"/>
                    </p>
					
                    <a hreflang="en" target="_blank">
                        <xsl:attribute name="href">
                            <xsl:value-of select="/rss/channel/link"/>
                        </xsl:attribute>
                        Visit Website &#x2192;
                    </a>--></header><main><div><xsl:attribute name="style"><xsl:value-of select="'margin: 0 auto;'" /><xsl:value-of select="'width: 90%;'" /><xsl:value-of select="'height: auto;'" /><xsl:value-of select="'padding: 10px 20px;'" /><!-- <xsl:value-of select="'border: 1px #f6f6f6 solid;'"/>						 --><xsl:value-of select="'background-color: #ffffff;'" /><xsl:value-of select="'font-family: Arial,Helvetica,sans-serif,emoji'" /></xsl:attribute><xsl:for-each select="/rss/channel/item"><article><div><xsl:attribute name="style"><xsl:value-of select="'display:inline-block;'" /><xsl:value-of select="'color:#808080;'" /><xsl:value-of select="'font-weight:bold;'" /><xsl:value-of select="'padding-right: 10px;'" /><xsl:value-of select="'padding-top: 10px;'" /><xsl:value-of select="'font-size: 13px;'" /></xsl:attribute><!--<a hreflang="en" target="_blank">
									<xsl:attribute name="style">
									<xsl:value-of select="'display:inline-block;'"/>
									<xsl:value-of select="'color:#49B1BB;'"/>
									<xsl:value-of select="'font-weight:bold;'"/>						
									<xsl:value-of select="'padding-right: 10px;'"/>
									<xsl:value-of select="'text-decoration: none;'"/>
									<xsl:value-of select="'font-size: 14px;'"/>	
								</xsl:attribute>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="link"/>
                                    </xsl:attribute>--><xsl:value-of select="title" /><!-- </a> --><div><xsl:attribute name="style"><xsl:value-of select="'display:inline-block;'" /><xsl:value-of select="'color:#808080;'" /><xsl:value-of select="'padding-left:5px;'" /><xsl:value-of select="'font-weight:bold;'" /><xsl:value-of select="'font-size: 13px;'" /></xsl:attribute> 
									
									
								

							<xsl:call-template name="removeZ"><xsl:with-param name="zAtEnd" select="pubDate" /></xsl:call-template><!-- <xsl:value-of select="substring-before(pubDate" /> --><!-- <xsl:value-of select="s:format-date(pubDate,'yyyy/MM/dd HH:mm:ss'" /> --></div></div><div><xsl:attribute name="style"><xsl:value-of select="'color:#808080;'" /><xsl:value-of select="'font-size: 13px;'" /><xsl:value-of select="'padding-bottom: 10px;'" /><xsl:value-of select="'border-bottom: 1px #e4e4e4 solid;'" /></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="description" /></div><!-- <footer>
                                Published:
                                <time>
                                    <xsl:value-of select="pubDate" />
                                </time>

                            </footer>--></article></xsl:for-each></div></main></body></html></xsl:template><xsl:template name="removeZ"><xsl:param name="zAtEnd" /><xsl:value-of select="substring-before($zAtEnd,'Z')" /><!-- <xsl:value-of select="$zAtEnd" /> --></xsl:template></xsl:stylesheet>
