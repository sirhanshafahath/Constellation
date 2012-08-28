<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="LIST" mode="product_index">
  <div id="{@name}_wrapper">
    <xsl:variable name="startrecord"><xsl:value-of select="(@page - 1) * @rpp + 1" /></xsl:variable>
    <xsl:variable name="maxcount">
      <xsl:choose>
        <xsl:when test="($startrecord + @rpp - 1) > @totalResults">
          <xsl:value-of select="@totalResults" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$startrecord + @rpp - 1" />
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <div id="titlebar" class="pagenav">
      
       <h2>Tattoo Design Gallery Index</h2>
    
    </div>
    
    <xsl:if test="@docount != 'false' and ceiling(@totalResults div @rpp) > 1">
    
    <div class="navbar pagenav">
      
        <span class="count">Showing Items <xsl:value-of select="$startrecord" /> to <xsl:value-of select="$maxcount" /> of <xsl:value-of select="@totalResults" /></span>
       
        <span class="pagination">
        <xsl:call-template name="SINGLE_PAGELOOP">
          <xsl:with-param name="page" select="@page" />
          <xsl:with-param name="rpp" select="@rpp" />
          <xsl:with-param name="ppp" select="@ppp" />
          <xsl:with-param name="totalResults" select="@totalResults" />
          <xsl:with-param name="start" select="@page" />
          <xsl:with-param name="repeat" select="ceiling(@totalResults div @rpp)"/>
          <xsl:with-param name="SELECTED" select="@page" />
          <xsl:with-param name="TYPE" select="'STATIC'" />
          <xsl:with-param name="BASEFUNC" select="'nextPage'" />
          <xsl:with-param name="ATTRIBS"></xsl:with-param>
          <xsl:with-param name="BASEURL"><xsl:value-of select="@url" /></xsl:with-param>
          <xsl:with-param name="BASEQS"><xsl:value-of select="@query_string" /></xsl:with-param>
          <xsl:with-param name="SITEMS" select="SORTITEMS" />
        </xsl:call-template>
        </span>
    
    </div>
    
    </xsl:if>
      
    <xsl:if test="count(SORTITEMS/SORTITEM) > 0">
    <form action="#" method="get">
    <span class="sort">
      Sort by: <select name="sort" class="sortselect" onChange="this.form.submit();">
        <xsl:for-each select="SORTITEMS/SORTITEM">
        <xsl:choose>
        <xsl:when test="@selected='true' and (count(preceding-sibling::*[@selected='true']) = 0)">
        <option value="{@value}" selected="selected"><xsl:value-of select="@description" /></option>
        </xsl:when>
        <xsl:otherwise>
        <option value="{@value}"><xsl:value-of select="@description" /></option>
        </xsl:otherwise>
        </xsl:choose>
        </xsl:for-each>
      </select>
    </span>
    </form>
    </xsl:if>
      
    <xsl:variable name="theskus">
      <xsl:for-each select="LISTITEM"><xsl:value-of select="product_sku" />,</xsl:for-each>
    </xsl:variable>
    <div id="results">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="550px;">	
        <xsl:choose>
          <xsl:when test="count(LISTITEM) = 0">
            <tr>
            <td>
            <table cellpadding="4">
              <tr>
                <td colspan="2" align="right" class="wiki_bluerule"><img src="http://ll.tattoojohnny.com/images/horizontal_rule.jpg" /></td>
              </tr>
              <tr>
                <td><img src="http://ll.tattoojohnny.com/images/ttj_smallicon.jpg" width="100" height="100" /></td>
                <td>No Items Available!</td>
              </tr>
            </table>
            </td>
            </tr>
          </xsl:when>
          <xsl:otherwise>
            <xsl:for-each select="LISTITEM[position() mod 4 = 1]">
              <tr>
              <xsl:apply-templates select=".|following-sibling::LISTITEM[position() &lt; 4]" mode="product_index_table">
                <xsl:with-param name="skus"><xsl:value-of select="$theskus" /></xsl:with-param>
              </xsl:apply-templates>
              </tr>
           </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
      </table>
          
    </div>
    
    <div class="navbar pagenav">
      
      <xsl:if test="@docount != 'false' and ceiling(@totalResults div @rpp) > 1">
        
        <span class="count">Showing Items <xsl:value-of select="$startrecord" /> to <xsl:value-of select="$maxcount" /> of <xsl:value-of select="@totalResults" /></span>
        
        <span class="pagination">
        <xsl:call-template name="SINGLE_PAGELOOP">
          <xsl:with-param name="page" select="@page" />
          <xsl:with-param name="rpp" select="@rpp" />
          <xsl:with-param name="ppp" select="@ppp" />
          <xsl:with-param name="totalResults" select="@totalResults" />
          <xsl:with-param name="start" select="@page" />
          <xsl:with-param name="repeat" select="ceiling(@totalResults div @rpp)"/>
          <xsl:with-param name="SELECTED" select="@page" />
          <xsl:with-param name="TYPE" select="'STATIC'" />
          <xsl:with-param name="BASEFUNC" select="'nextPage'" />
          <xsl:with-param name="ATTRIBS"></xsl:with-param>
          <xsl:with-param name="BASEURL"><xsl:value-of select="@url" /></xsl:with-param>
          <xsl:with-param name="BASEQS"><xsl:value-of select="@query_string" /></xsl:with-param>
          <xsl:with-param name="SITEMS" select="SORTITEMS" />
        </xsl:call-template>
        </span>
        
      </xsl:if>
    
    </div>
    
  </div>
  
</xsl:template>

<xsl:template match="LISTITEM" mode="product_index_table">
    <xsl:param name="skus">null</xsl:param>
    <td width="25%">	
        <a href="/product/{product_sku}/{//PARAMS/VAR[@name='op']/@value}/searchpage/{../@page}/image/{position()}/prods/{$skus}">
          <xsl:value-of select="product_sku" />
        </a>
    </td>
    <xsl:if test="(position() = last()) and (position() &lt; 4)">
      <xsl:call-template name="FillerCells">
         <xsl:with-param name="cellCount" select="4 - position()"/>
      </xsl:call-template>
    </xsl:if>
</xsl:template>

</xsl:stylesheet>