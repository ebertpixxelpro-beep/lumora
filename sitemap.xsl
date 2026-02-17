<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>XML Sitemap - Lumora Webworks</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #050505;
            color: #e0e0e0;
            padding: 20px;
          }
          h1 {
            color: #d4af37;
            border-bottom: 2px solid #d4af37;
            padding-bottom: 10px;
            font-weight: 300;
            text-transform: uppercase;
            letter-spacing: 2px;
          }
          p {
            font-size: 14px;
            color: #888;
            margin-bottom: 20px;
          }
          table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.3);
          }
          th {
            background-color: #111;
            color: #d4af37;
            text-align: left;
            padding: 15px;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 12px;
            letter-spacing: 1px;
            border-bottom: 1px solid #333;
          }
          td {
            padding: 12px 15px;
            font-size: 13px;
            border-bottom: 1px solid #222;
            color: #ccc;
          }
          tr:hover td {
            background-color: #1a1a1a;
            color: #fff;
          }
          a {
            color: #d4af37;
            text-decoration: none;
            transition: color 0.2s;
          }
          a:hover {
            color: #fff;
            text-decoration: underline;
          }
          .count {
            float: right;
            font-size: 12px;
            color: #666;
            margin-top: 5px;
          }
        </style>
      </head>
      <body>
        <h1>XML Sitemap</h1>
        <p>This is a sitemap generated for search engines. It lists all pages on the Lumora Webworks website.</p>
        <div class="count">
            Total URLs: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
        </div>
        <table>
          <tr>
            <th>URL Location</th>
            <th>Last Modified</th>
            <th>Change Frequency</th>
            <th>Priority</th>
            <th>Images</th>
          </tr>
          <xsl:for-each select="sitemap:urlset/sitemap:url">
            <tr>
              <td>
                <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
              </td>
              <td><xsl:value-of select="sitemap:lastmod"/></td>
              <td><xsl:value-of select="sitemap:changefreq"/></td>
              <td><xsl:value-of select="sitemap:priority"/></td>
              <td><xsl:value-of select="count(image:image)"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <div style="margin-top: 40px; text-align: center; color: #444; font-size: 11px;">
            Structured Sitemap by Lumora Webworks SEO Team
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
