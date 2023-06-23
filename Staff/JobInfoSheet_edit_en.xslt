<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:output method="html"/>
	<xsl:template match="/">
	<script src="/prinergyweb/custom/JobInfoSheet/Examples/FLjs/3.1.1.jquery.min.js"/>
	<script src="/prinergyweb/custom/JobInfoSheet/Examples/FSP_WORKFLOW_JavaScripts/todayDate.js"/>
	
		<link rel="stylesheet" href="/prinergyweb/custom/JobInfoSheet/DEFAULT_INFOSHEET_CSS.css"/>
		<br/>
		<table style="padding-left:10;">
			<tr>
				<th align="Left" nowrap="true" style="padding:2;">
					<span style="font-size: 16px; font-family: Roboto, sans-serif;">Imię i nazwisko:</span>
				</th>
				<td>
					<span>
						<xsl:for-each select="JobSpec">
							<xsl:for-each select="NameAndSurname">
								<input type="text" style="font-size: 16px; font-family: Roboto, sans-serif; text-align: center;">
									<xsl:attribute name="value">
										<xsl:value-of select="."/>
									</xsl:attribute>
								</input>
							</xsl:for-each>
						</xsl:for-each>
					</span>
				</td>
				<th align="Left" nowrap="true" style="padding-left: 100px">
					<span style="font-size: 16px; font-family: Roboto, sans-serif;">Miejscowość i data:</span>
				</th>
				<td>
					<span>
						<xsl:for-each select="JobSpec">
							<xsl:for-each select="RequestTown">
								<select style="font-size: 16px;" required="required">
									<option value="">
										<xsl:if test=".=''">
											<xsl:attribute name="selected">1</xsl:attribute>
										</xsl:if>
									</option>
									<option value="Drużyna">
										<xsl:if test=".='Drużyna'">
											<xsl:attribute name="selected">1</xsl:attribute>
										</xsl:if>
										Drużyna
									</option>
									<option value="Wągrowiec">
										<xsl:if test=".='Wągrowiec'">
											<xsl:attribute name="selected">1</xsl:attribute>
										</xsl:if>
										Wągrowiec
									</option>
								</select>
							</xsl:for-each>
						</xsl:for-each>
					</span>
				</td>
				<td>
					<span>
						<xsl:for-each select="JobSpec">
							<xsl:for-each select="RequestDate">
								<input class="today" type="date"  style="font-size: 16px; font-family: Roboto, sans-serif;">
									<xsl:attribute name="value">
										<xsl:value-of select="."/>
									</xsl:attribute>
								</input>
							</xsl:for-each>
						</xsl:for-each>
					</span>
				</td>
			</tr>
		</table>
		<table style="padding-left:10;">
			<th align="Left" nowrap="true" style="padding:2;">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">Nazwa działu:</span>
			</th>
			<td>
				<span>
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="DepartmentName">
							<select style="font-size: 16px" required="required">
								<option value="">
									<xsl:if test=".=''">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
								</option>
								<option value="Studio">
									<xsl:if test=".='Studio'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										Studio
								</option>
								<option value="Produkcja">
									<xsl:if test=".='Produkcja'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										Produkcja
								</option>
								<option value="Administracja">
									<xsl:if test=".='Administracja'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										Administracja
								</option>
								<option value="IT">
									<xsl:if test=".='IT'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										IT
								</option>
							</select>
						</xsl:for-each>
					</xsl:for-each>
				</span>
			</td>
		</table>
		<br/>
		<br/>
		<br/>
		<th align="Left" nowrap="true" style="padding:2;">
			<span style="font-size: 25px; font-family: Roboto, sans-serif; font-weight:bold; position: absolute; left: 50%; transform: translate(-50%); ">
			Wniosek o urlop
			</span>
		</th>
		<br/>
		<br/>
		<br/>
		<br/>
		<table>
			<th align="Left" nowrap="true" style="padding-left:120;">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">Niniejszym składam wniosek o udzielenie w dniach od</span>
			</th>
			<td>
				<span>
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="RequestedBeginDate">
							<input type="date" style="font-size: 16px; font-family: Roboto, sans-serif; text-align: center;">
								<xsl:attribute name="value">
									<xsl:value-of select="."/>
								</xsl:attribute>
							</input>
						</xsl:for-each>
					</xsl:for-each>
				</span>
			</td>
			<th align="Left" nowrap="true" style="padding:2;">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">do</span>
			</th>
			<td>
				<span>
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="RequestedFinalDate">
							<input type="date" style="font-size: 16px; font-family: Roboto, sans-serif; text-align: center;">
								<xsl:attribute name="value">
									<xsl:value-of select="."/>
								</xsl:attribute>
							</input>
						</xsl:for-each>
					</xsl:for-each>
				</span>
			</td>
		</table>
		<table>
			<th align="Left" nowrap="true" style="padding-left:10;">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">przysługującego za rok</span>
			</th>
			<td>
				<span>
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="Year">
							<input type="number" min="1900" max="2099" step="1" value="2023" style="font-size: 16px; font-family: Roboto, sans-serif; text-align: center;">
								<xsl:attribute name="value">
									<xsl:value-of select="."/>
								</xsl:attribute>
							</input>
						</xsl:for-each>
					</xsl:for-each>
				</span>
			</td>
			<th align="Left" nowrap="true">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">urlopu</span>
			</th>
			<td>
				<td align="Left" width="auto" style="padding:2 5 2 5 ;">
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="HolidayType">
							<select required="required" style="font-size: 16px">
								<option value="">
									<xsl:if test=".=''">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
								</option>
								<option value="wypoczynkowego">
									<xsl:if test=".='wypoczynkowego'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										wypoczynkowego
								</option>
								<option value="okolicznościowego">
									<xsl:if test=".='okolicznościowego'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										okolicznościowego
								</option>
								<option value="rehabilitacyjnego">
									<xsl:if test=".='rehabilitacyjnego'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										rehabilitacyjnego
								</option>
								<option value="opiekuńczego">
									<xsl:if test=".='opiekuńczego'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										opiekuńczego
								</option>
								<option value="szkoleniowego">
									<xsl:if test=".='szkoleniowego'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										szkoleniowego
								</option>
							</select>
						</xsl:for-each>
					</xsl:for-each>
				</td>
			</td>
			<th align="Left" nowrap="true">
				<span style="font-size: 16px; font-family: Roboto, sans-serif;">.</span>
			</th>
		</table>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<table border="0px" style="padding-left:10;  margin-bottom:1;" id="PlatesOrder_Activator">
			<tr>
				<th align="Left" width="100" nowrap="true" >
					<span style="color: red;">Generuj wniosek:</span>
				</th>
				<td align="Left" width="auto" style="padding:2 5 2 5 ;">
					<xsl:for-each select="JobSpec">
						<xsl:for-each select="Activator">
							<select style="font-size: 16px" required="required">
								<option value="">
									<xsl:if test=".=''">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
								</option>
								<option value="Tak">
									<xsl:if test=".='Tak'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										Tak
								</option>
								<option value="Nie">
									<xsl:if test=".='Nie'">
										<xsl:attribute name="selected">1</xsl:attribute>
									</xsl:if>
										Nie
								</option>
							</select>
						</xsl:for-each>
					</xsl:for-each>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet>